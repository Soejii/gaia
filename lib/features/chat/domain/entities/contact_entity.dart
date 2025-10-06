import 'package:gaia/features/chat/domain/type/chat_role.dart';

class ContactEntity {
  final int id;
  final ChatRole role;
  final String? className;
  final String? name;
  final String? photo;

  ContactEntity({
    required this.id,
    required this.role,
    this.className,
    this.name,
    this.photo,
  });
}