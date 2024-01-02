import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentType {
  development,
  production;

  bool get isDev => this == development;
  bool get isProd => this == production;
}

final class Environment {
  const Environment._({
    required this.baseUrl,
    required this.type,
  });
  static Future<Environment> prod() async {
    const baseUrl = 'https://prod.com';
    const type = EnvironmentType.production;

    await dotenv.load(isOptional: true);

    return Environment._(
      baseUrl: dotenv.maybeGet('BASE_URL', fallback: baseUrl)!,
      type: type,
    );
  }

  static Future<Environment> dev() async {
    const baseUrl = 'https://dev.com';
    const type = EnvironmentType.development;

    await dotenv.load(isOptional: true);

    return Environment._(
      baseUrl: dotenv.maybeGet('BASE_URL', fallback: baseUrl)!,
      type: type,
    );
  }

  final String baseUrl;
  final EnvironmentType type;
}
