import 'package:dio/dio.dart';
import 'package:gaia/features/task/data/models/detail_task_model.dart';
import 'package:gaia/features/task/data/models/task_model.dart';

class TaskRemoteDataSource {
  final Dio _dio;
  TaskRemoteDataSource(this._dio);

  Future<List<TaskModel>> getTasks(int page) async {
    final res = await _dio.get(
      '/task/all',
      queryParameters: {
        'paginate': true,
        'page': page,
        'perPage': 10,
      },
    );
    final data = (res.data as Map<String, dynamic>)['data'] as List<dynamic>;
    return data
        .map(
          (e) => TaskModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }

  Future<DetailTaskModel> getDetailTask(int id) async {
    final res = await _dio.get(
      '/task/detail/$id',
    );
    return DetailTaskModel.fromJson(res.data['data']);
  }
}
