// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolModelImpl _$$SchoolModelImplFromJson(Map<String, dynamic> json) =>
    _$SchoolModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      youtube: json['youtube'] as String?,
      description: json['description'] as String?,
      registrationNumber: json['registration_number'] as String?,
    );

Map<String, dynamic> _$$SchoolModelImplToJson(_$SchoolModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'youtube': instance.youtube,
      'description': instance.description,
      'registration_number': instance.registrationNumber,
    };
