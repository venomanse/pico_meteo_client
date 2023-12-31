import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_with_email_request.freezed.dart';
part 'log_in_with_email_request.g.dart';

@freezed
class LogInWithEmailRequest with _$LogInWithEmailRequest {
  factory LogInWithEmailRequest({
    required String email,
    required String password,
  }) = _LogInWithEmailRequest;

  factory LogInWithEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$LogInWithEmailRequestFromJson(json);
}
