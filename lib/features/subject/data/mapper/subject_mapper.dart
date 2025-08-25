

import 'package:gaia/features/subject/data/models/subject_model.dart';
import 'package:gaia/features/subject/domain/entities/subject_entity.dart';

extension SubjectMapper on SubjectModel {
  SubjectEntity toEntity() => SubjectEntity(
        id: id,
        name: name,
        iconCode: iconCode,
      );
}
