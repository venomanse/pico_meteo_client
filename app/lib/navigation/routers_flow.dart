import 'package:equatable/equatable.dart';

///
sealed class RoutersFlow extends Equatable {
  const RoutersFlow();

  @override
  List<Object?> get props => [];
}

final class AuthFlow extends RoutersFlow {
  const AuthFlow();
}

final class SplashFlow extends RoutersFlow {
  const SplashFlow();
}

final class HomeFlow extends RoutersFlow {
  const HomeFlow();
}
