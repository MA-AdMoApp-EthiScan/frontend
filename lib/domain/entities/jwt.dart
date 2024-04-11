import 'package:jwt_decoder/jwt_decoder.dart';

class Jwt {
  final String token;

  Jwt(this.token);

  bool isExpired() {
    return JwtDecoder.isExpired(token);
  }

  @override
  String toString() {
    return 'Jwt(token: $token)';
  }
}
