// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      json['password'] as String,
      json['email'] as String,
      (json['_id'] as num).toInt(),
      (json['results'] as num).toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      '_id': instance.id,
      'results': instance.results,
    };
