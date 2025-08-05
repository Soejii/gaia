import 'package:gaia/features/login/data/models/login_model.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/school/data/mappers/school_mapper.dart';

extension LoginResponseMapper on LoginResponseModel {
  LoginEntity toEntity() => LoginEntity(
        token: accessToken,
        type: tokenType,
        expiresIn: expiresIn,
        schoolEntity: school?.toEntity(),
      );
}
