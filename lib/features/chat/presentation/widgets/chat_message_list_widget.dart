import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/chat/domain/entity/chat_message_entity.dart';
import 'package:gaia/features/chat/presentation/widgets/chat_message_bubble_widget.dart';
import 'package:gaia/features/chat/presentation/widgets/chat_date_separator_widget.dart';

class ChatMessageListWidget extends StatelessWidget {
  final List<ChatMessageEntity> messages;
  final ScrollController scrollController;

  const ChatMessageListWidget({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    // Sort messages by date (oldest first, newest at bottom)
    final sortedMessages = [...messages]
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));

    final groupedMessages = _groupMessagesByDate(sortedMessages);

    return ListView.builder(
      controller: scrollController,
      reverse: false, // Normal scrolling, newest messages at bottom
      padding: EdgeInsets.all(16.w),
      itemCount: groupedMessages.length,
      itemBuilder: (context, index) {
        final item = groupedMessages[index];
        if (item['type'] == 'date') {
          return ChatDateSeparatorWidget(date: item['date'] as String);
        } else {
          return ChatMessageBubbleWidget(message: item['message'] as ChatMessageEntity);
        }
      },
    );
  }

  List<Map<String, dynamic>> _groupMessagesByDate(
      List<ChatMessageEntity> messages) {
    final List<Map<String, dynamic>> grouped = [];
    String? lastDate;

    for (final message in messages) {
      // Since createdAt is now string, we need to parse or use simple date grouping
      final messageDate = _extractDateFromString(message.createdAt);

      if (lastDate == null || lastDate != messageDate) {
        grouped.add({
          'type': 'date',
          'date': messageDate,
        });
        lastDate = messageDate;
      }

      grouped.add({
        'type': 'message',
        'message': message,
      });
    }

    return grouped;
  }

  String _extractDateFromString(String dateTimeString) {
    // Simple date extraction - you may need to adjust based on actual format
    try {
      final dateTime = DateTime.parse(dateTimeString);
      return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
    } catch (e) {
      // Fallback for unparseable dates
      return dateTimeString.split(' ').first;
    }
  }
}
