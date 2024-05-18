enum AuthExceptionType {
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  weakPassword,
  operationNotAllowed,
  emailAlreadyInUse,
  unknown,
}

/// Generic exception related to Authentication. Check the error message for more details.
class AuthenticationException implements Exception {
  AuthExceptionType exceptionType;
  AuthenticationException(this.exceptionType);

  @override
  String toString() {
    switch (exceptionType) {
      case AuthExceptionType.invalidEmail:
        return "Invalid email";
      case AuthExceptionType.userDisabled:
        return "User disabled";
      case AuthExceptionType.userNotFound:
        return "User not found";
      case AuthExceptionType.wrongPassword:
        return "Wrong password";
      case AuthExceptionType.weakPassword:
        return "Weak password";
      case AuthExceptionType.operationNotAllowed:
        return "Operation not allowed";
      case AuthExceptionType.emailAlreadyInUse:
        return "Email already in use";
      default:
        return "Unknown error";
    }
  }
}

AuthenticationException getAuthenticationExceptionFromCode(String code) {
  switch (code) {
    case "user-not-found":
      return AuthenticationException(AuthExceptionType.userNotFound);
    case "wrong-password":
      return AuthenticationException(AuthExceptionType.wrongPassword);
    case "invalid-email":
      return AuthenticationException(AuthExceptionType.invalidEmail);
    case "user-disabled":
      return AuthenticationException(AuthExceptionType.userDisabled);
    default:
      return AuthenticationException(AuthExceptionType.unknown);
  }
}
