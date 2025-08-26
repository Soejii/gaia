import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/subject/data/datasources/subject_remote_data_source.dart';
import 'package:gaia/features/subject/data/subject_repository_impl.dart';
import 'package:gaia/features/subject/domain/subject_repository.dart';
import 'package:gaia/features/subject/domain/usecase/get_list_subjects_usecase.dart';
import 'package:gaia/shared/core/infrastructure/network/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subject_providers.g.dart';

@riverpod
SubjectRemoteDataSource subjectRemoteDataSource(Ref ref) {
  return SubjectRemoteDataSource(
    ref.watch(dioProvider),
  );
}

@riverpod
SubjectRepository subjectRepository(Ref ref) {
  return SubjectRepositoryImpl(
    ref.watch(subjectRemoteDataSourceProvider),
  );
}

@riverpod
GetListSubjectsUsecase getListSubjectsUsecase(Ref ref) {
  return GetListSubjectsUsecase(
    ref.watch(subjectRepositoryProvider),
  );
}
