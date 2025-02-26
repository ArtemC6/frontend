// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: (json['user_id'] as num?)?.toInt(),
      name: json['name'] as String,
      phone: json['phone_number'] as String?,
      countryIso: json['country_iso'] as String?,
      age: (json['age'] as num).toInt(),
      lookingFor: json['looking_for'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'name': instance.name,
      'phone_number': instance.phone,
      'country_iso': instance.countryIso,
      'age': instance.age,
      'looking_for': instance.lookingFor,
    };
