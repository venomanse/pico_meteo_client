import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_user_request.freezed.dart';
part 'new_user_request.g.dart';

@freezed
class NewUserRequest with _$NewUserRequest {
  factory NewUserRequest({
    required String email,
    required String password,
    required String passwordConfirm,
  }) = _NewUserRequest;

  factory NewUserRequest.fromJson(Map<String, dynamic> json) =>
      _$NewUserRequestFromJson(json);
}
