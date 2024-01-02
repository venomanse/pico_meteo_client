// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      avatar: json['avatar'] as String,
      email: json['email'] as String?,
      emailVisibility: json['emailVisibility'] as bool,
      name: json['name'] as String,
      username: json['username'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'created': instance.created.toIso8601String(),
    'updated': instance.updated.toIso8601String(),
    'avatar': instance.avatar,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['emailVisibility'] = instance.emailVisibility;
  val['name'] = instance.name;
  val['username'] = instance.username;
  val['verified'] = instance.verified;
  return val;
}
