import 'package:dio/dio.dart';
import 'package:gaia/features/chat/data/models/chat_model.dart';
import 'package:gaia/features/chat/data/models/contact_model.dart';

class ChatRemoteDataSource {
  final Dio _dio;
  ChatRemoteDataSource(this._dio);

  Future<List<ChatModel>> getListChats({int page = 1}) async {
    final res = await _dio.get('/chat/get-list-chats', queryParameters: {
      'page': page,
      'perPage': 10,
    });

    final data =
        (res.data as Map<String, dynamic>)['data']['data'] as List<dynamic>;

    return data
        .map(
          (e) => ChatModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }

  Future<List<ContactModel>> getContacts({int page = 1}) async {
    final res = await _dio.get('/chat/get-contacts', queryParameters: {
      'page': page,
      'perPage': 100,
    });
    final data =
        (res.data as Map<String, dynamic>)['data']['data'] as List<dynamic>;

    return data
        .map(
          (e) => ContactModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }
}
