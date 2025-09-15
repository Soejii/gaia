import 'package:dio/dio.dart';
import 'package:gaia/features/subject/data/models/module_model.dart';
import 'package:gaia/features/subject/data/models/subject_model.dart';

class SubjectRemoteDataSource {
  final Dio _dio;
  SubjectRemoteDataSource(this._dio);

  Future<List<SubjectModel>> getAllSubject() async {
    final res = await _dio.get(
      '/subjects',
    );
    final data = (res.data as Map<String, dynamic>)['data'] as List<dynamic>;
    return data
        .map(
          (e) => SubjectModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }

  Future<List<ModuleModel>> getModule(int subjectId) async {
    final res = await _dio.get(
      '/subject/list-modules',
      queryParameters: {
        'subject_id': subjectId,
      },
    );
    final data = (res.data as Map<String, dynamic>)['data'] as List<dynamic>;
    return data
        .map(
          (e) => ModuleModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }
}
