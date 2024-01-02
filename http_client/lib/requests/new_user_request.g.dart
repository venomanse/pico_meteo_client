// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewUserRequestImpl _$$NewUserRequestImplFromJson(Map<String, dynamic> json) =>
    _$NewUserRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$$NewUserRequestImplToJson(
        _$NewUserRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
    };
