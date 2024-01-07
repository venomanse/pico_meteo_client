import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

sealed class BaseSnackBar {
  SnackBar build(BuildContext context);
}

final class EmailVerification extends BaseSnackBar {
  EmailVerification({
    required this.email,
  });

  final String email;

  @override
  SnackBar build(BuildContext context) => SnackBar(
        content: Text(
          S.current.emailVerificationSentTo(email),
        ),
      );
}
