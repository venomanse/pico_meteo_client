// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserRequestImpl _$$CreateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$$CreateUserRequestImplToJson(
        _$CreateUserRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
    };
