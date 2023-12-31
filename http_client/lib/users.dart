import 'package:pocketbase/pocketbase.dart';

import 'requests/create_user_request.dart';
import 'requests/log_in_with_email_request.dart';

final class UsersApi {
  const UsersApi({required this.pocketBase});

  final PocketBase pocketBase;

  RecordService get users => pocketBase.collection('users');

  Future<void> createUser({
    required CreateUserRequest request,
  }) async {
    final body = request.toJson();
    await users.create(body: body);

    await users.requestVerification(request.email);
  }

  Future<void> logIn({
    required LogInWithEmailRequest request,
  }) async {
    await users.authWithPassword(
      request.email,
      request.password,
    );
  }
}
