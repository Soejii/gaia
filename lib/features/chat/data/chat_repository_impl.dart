import 'package:gaia/features/chat/data/datasource/chat_remote_data_source.dart';
import 'package:gaia/features/chat/data/mappers/chat_mapper.dart';
import 'package:gaia/features/chat/data/mappers/contact_mapper.dart';
import 'package:gaia/features/chat/domain/chat_repository.dart';
import 'package:gaia/features/chat/domain/entities/chat_entity.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource _remoteDataSource;
  ChatRepositoryImpl(this._remoteDataSource);

  @override
  Future<Result<List<ChatEntity>>> getListChats({int page = 1, int perPage = 10}) => guard(() async {
        final models = await _remoteDataSource.getListChats(page: page);
        return models.map((model) => model.toEntity()).toList();
      });

  @override
  Future<Result<List<ContactEntity>>> getContacts({int page = 1, int perPage = 20}) => guard(() async {
        final models = await _remoteDataSource.getContacts(page: page);
        return models.map((model) => model.toEntity()).toList();
      });
}