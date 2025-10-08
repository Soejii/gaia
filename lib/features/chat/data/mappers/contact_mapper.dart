import 'package:gaia/features/chat/data/models/contact_model.dart';
import 'package:gaia/features/chat/domain/entity/contact_entity.dart';
import 'package:gaia/features/chat/domain/type/chat_role.dart';

extension ContactMapper on ContactModel {
  ContactEntity toEntity() => ContactEntity(
        id: userId ?? 0,
        role: ChatRole.fromString(role) ?? ChatRole.unknown,
        className: className,
        name: name,
        photo: photo,
      );
}