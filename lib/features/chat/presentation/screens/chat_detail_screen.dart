import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/chat/presentation/providers/message_controller.dart';
import 'package:gaia/features/chat/presentation/providers/send_message_controller.dart';
import 'package:gaia/features/chat/presentation/widgets/message_list_widget.dart';
import 'package:gaia/features/chat/presentation/widgets/message_input_widget.dart';
import 'package:gaia/features/chat/presentation/widgets/chat_detail_app_bar_widget.dart';

class ChatDetailScreen extends HookConsumerWidget {
  final int userId;

  const ChatDetailScreen({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageAsync = ref.watch(messageControllerProvider(userId));
    final controller = ref.read(messageControllerProvider(userId).notifier);
    final scrollController = useScrollController();
    final textController = useTextEditingController();
    final focusNode = useFocusNode();

    useEffect(() {
      void onScroll() {
        if (scrollController.position.extentAfter < 200) {
          final currentData = ref.read(messageControllerProvider(userId)).asData?.value;
          if (currentData != null &&
              currentData.messages.hasMore &&
              !currentData.messages.isMoreLoading) {
            controller.loadMore();
          }
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, userId]);

    useEffect(() {
      controller.startAutoRefresh();
      return () => controller.stopAutoRefresh();
    }, [userId]);

    useEffect(() {
      void scrollToBottom() {
        if (scrollController.hasClients) {
          Future.delayed(const Duration(milliseconds: 300), () {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          });
        }
      }

      ref.listen(messageControllerProvider(userId), (previous, next) {
        if (next.hasValue && next.value != null) {
          scrollToBottom();
        }
      });

      return null;
    }, [scrollController, userId]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: messageAsync.when(
        data: (data) => ChatDetailAppBarWidget(contact: data.user),
        loading: () => const ChatDetailAppBarWidget(),
        error: (_, __) => const ChatDetailAppBarWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: messageAsync.when(
              data: (data) => MessageListWidget(
                messages: data.messages.items,
                scrollController: scrollController,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $error'),
                    ElevatedButton(
                      onPressed: () => controller.refresh(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          MessageInputWidget(
            textController: textController,
            focusNode: focusNode,
            onSend: () => _sendMessage(textController, scrollController, ref),
          ),
        ],
      ),
    );
  }

  void _sendMessage(TextEditingController textController, ScrollController scrollController, WidgetRef ref) async {
    final message = textController.text.trim();
    if (message.isNotEmpty) {
      try {
        final sendController = ref.read(sendMessageControllerProvider.notifier);
        await sendController.sendMessage(userId: userId, message: message);

        textController.clear();
        
        // Refresh messages in detail screen
        final messageController = ref.read(messageControllerProvider(userId).notifier);
        await messageController.refresh();

        Future.delayed(const Duration(milliseconds: 100), () {
          if (scrollController.hasClients) {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        });
      } catch (e) {
        debugPrint('Send message error: $e');
      }
    }
  }
}