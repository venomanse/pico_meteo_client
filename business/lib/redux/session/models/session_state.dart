import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/user.dart';

part 'session_state.freezed.dart';

@freezed
sealed class SessionState with _$SessionState {
  const factory SessionState.idle() = SessionStateIdle;
  const factory SessionState.available({
    required User user,
  }) = SessionStateAvailable;
}
