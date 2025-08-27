// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num).toInt(),
      nis: json['nis'] as String?,
      nisn: json['nisn'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      birthplace: json['birthplace'] as String?,
      birthdate: json['birthdate'] as String?,
      religion: json['religion'] as String?,
      address: json['address'] as String?,
      rt: json['rt'] as String?,
      rw: json['rw'] as String?,
      dusun: json['dusun'] as String?,
      kelurahan: json['kelurahan'] as String?,
      kecamatan: json['kecamatan'] as String?,
      codePos: json['code_pos'] as String?,
      schoolOrigin: json['school_origin'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nis': instance.nis,
      'nisn': instance.nisn,
      'name': instance.name,
      'photo': instance.photo,
      'gender': instance.gender,
      'username': instance.username,
      'email': instance.email,
      'birthplace': instance.birthplace,
      'birthdate': instance.birthdate,
      'religion': instance.religion,
      'address': instance.address,
      'rt': instance.rt,
      'rw': instance.rw,
      'dusun': instance.dusun,
      'kelurahan': instance.kelurahan,
      'kecamatan': instance.kecamatan,
      'code_pos': instance.codePos,
      'school_origin': instance.schoolOrigin,
    };
