import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_request.freezed.dart';
part 'create_user_request.g.dart';

@freezed
class CreateUserRequest with _$CreateUserRequest {
  factory CreateUserRequest({
    required String email,
    required String password,
    required String passwordConfirm,
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}
