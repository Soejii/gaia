import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/chat/domain/entity/message_entity.dart';
import 'package:gaia/features/chat/presentation/widgets/message_bubble_widget.dart';
import 'package:gaia/features/chat/presentation/widgets/date_separator_widget.dart';

class MessageListWidget extends StatelessWidget {
  final List<MessageEntity> messages;
  final ScrollController scrollController;

  const MessageListWidget({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final sortedMessages = [...messages]
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));

    final groupedMessages = _groupMessagesByDate(sortedMessages);

    return ListView.builder(
      controller: scrollController,
      reverse: false,
      padding: EdgeInsets.all(16.w),
      itemCount: groupedMessages.length,
      itemBuilder: (context, index) {
        final item = groupedMessages[index];
        if (item['type'] == 'date') {
          return DateSeparatorWidget(date: item['date'] as DateTime);
        } else {
          return MessageBubbleWidget(message: item['message'] as MessageEntity);
        }
      },
    );
  }

  List<Map<String, dynamic>> _groupMessagesByDate(
      List<MessageEntity> messages) {
    final List<Map<String, dynamic>> grouped = [];
    DateTime? lastDate;

    for (final message in messages) {
      final messageDate = DateTime(
        message.createdAt.year,
        message.createdAt.month,
        message.createdAt.day,
      );

      if (lastDate == null || !_isSameDay(lastDate, messageDate)) {
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

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}
