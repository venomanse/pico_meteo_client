import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    required DateTime created,
    required DateTime updated,
    required String avatar,
    required String? email,
    required bool emailVisibility,
    required String name,
    required String username,
    required bool verified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
