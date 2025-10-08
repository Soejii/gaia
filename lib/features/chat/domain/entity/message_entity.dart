class MessageEntity {
  final String type;
  final String message;
  final DateTime createdAt;

  const MessageEntity({
    required this.type,
    required this.message,
    required this.createdAt,
  });

  bool get isReceived => type == 'receive';
  bool get isSent => type == 'send';
}
