import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/chat/presentation/providers/chat_detail_controller.dart';
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
    final chatDetailAsync = ref.watch(chatDetailControllerProvider(userId));
    final controller = ref.read(chatDetailControllerProvider(userId).notifier);
    final scrollController = useScrollController();
    final textController = useTextEditingController();
    final focusNode = useFocusNode();

    useEffect(() {
      void onScroll() {
        if (scrollController.position.extentAfter < 200) {
          final currentData =
              ref.read(chatDetailControllerProvider(userId)).asData?.value;
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

      ref.listen(chatDetailControllerProvider(userId), (previous, next) {
        if (next.hasValue && next.value != null) {
          scrollToBottom();
        }
      });

      return null;
    }, [scrollController, userId]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: chatDetailAsync.when(
        data: (data) => ChatDetailAppBarWidget(contact: data.contact),
        loading: () => const ChatDetailAppBarWidget(),
        error: (_, __) => const ChatDetailAppBarWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: chatDetailAsync.when(
              data: (data) {
                if (data.messages.items.isEmpty) {
                  return const Center(child: Text('Belum ada pesan'));
                }
                return MessageListWidget(
                  messages: data.messages.items,
                  scrollController: scrollController,
                );
              },
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
            onSend: () => _sendMessage(textController, scrollController, ref, context),
          ),
        ],
      ),
    );
  }

  void _sendMessage(TextEditingController textController,
      ScrollController scrollController, WidgetRef ref, BuildContext context) async {
    final message = textController.text.trim();
    if (message.isEmpty) return;

    final controller =
        ref.read(chatDetailControllerProvider(userId).notifier);

    controller.addOptimisticMessage(message);

    textController.clear();

    if (scrollController.hasClients) {
      Future.delayed(const Duration(milliseconds: 100), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      });
    }

    controller.sendMessage(message).catchError((error) {
      controller.removeOptimisticMessage(message);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Gagal mengirim pesan: $error'),
          backgroundColor: Colors.red,
          action: SnackBarAction(
            label: 'Retry',
            textColor: Colors.white,
            onPressed: () {
              controller.addOptimisticMessage(message);
              controller.sendMessage(message);
            },
          ),
        ),
      );
    });
  }
}
