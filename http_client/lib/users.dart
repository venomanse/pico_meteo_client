import 'package:models/user.dart';
import 'package:pocketbase/pocketbase.dart';

import 'requests/log_in_with_email_request.dart';
import 'requests/new_user_request.dart';

final class UsersApi {
  UsersApi({
    required PocketBase pocketBase,
  }) : _pocketBase = pocketBase;

  final PocketBase _pocketBase;

  RecordService get collection => _pocketBase.collection('users');

  /// Create a new user with email and password and send a verification email
  Future<User> create({required NewUserRequest request}) async {
    final body = request.toJson();
    final result = await collection.create(body: body);

    await collection.requestVerification(request.email);
    final json = result.toJson();

    return User.fromJson(json);
  }

  /// Log in with email and password
  Future<User> logIn({required LogInWithEmailRequest request}) async {
    final result = await collection.authWithPassword(
      request.email,
      request.password,
    );

    final json = result.record!.toJson();

    return User.fromJson(json);
  }
}
