class ChatEntity {
  final int id;
  final String? photo;
  final String? name;
  final String? role;
  final String? lastChat;
  final String? lastChatDate;

  ChatEntity({
    required this.id,
    this.photo,
    this.name,
    this.role,
    this.lastChat,
    this.lastChatDate,
  });
}