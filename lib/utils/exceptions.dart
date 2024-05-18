// ~~~ Authentication ~~~

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

// ~~~ Database ~~~

enum DatabaseExceptionType {
  unknown,
  notFound,
  permissionDenied,
  aborted,
  alreadyExists,
  canceled,
  deadlineExceeded,
  unavailable,
}

/// Generic exception related to Storage. Check the error message for more details.
class DatabaseException implements Exception {
  DatabaseExceptionType exceptionType;
  DatabaseException(this.exceptionType);

  @override
  String toString() {
    switch (exceptionType) {
      case DatabaseExceptionType.notFound:
        return "Not found";
      case DatabaseExceptionType.permissionDenied:
        return "Permission denied";
      case DatabaseExceptionType.aborted:
        return "Aborted";
      case DatabaseExceptionType.alreadyExists:
        return "Already exists";
      case DatabaseExceptionType.canceled:
        return "Canceled";
      case DatabaseExceptionType.deadlineExceeded:
        return "Deadline exceeded";
      case DatabaseExceptionType.unavailable:
        return "Unavailable";
      default:
        return "Unknown error";
    }
  }
}

DatabaseException getDatabaseExceptionFromCode(String code) {
  switch (code) {
    case 'cloud_firestore/not-found':
      return DatabaseException(DatabaseExceptionType.notFound);
    case 'cloud_firestore/permission-denied':
      return DatabaseException(DatabaseExceptionType.permissionDenied);
    case 'cloud_firestore/aborted':
      return DatabaseException(DatabaseExceptionType.aborted);
    case 'cloud_firestore/already-exists':
      return DatabaseException(DatabaseExceptionType.alreadyExists);
    case 'cloud_firestore/canceled':
      return DatabaseException(DatabaseExceptionType.canceled);
    case 'cloud_firestore/deadline-exceeded':
      return DatabaseException(DatabaseExceptionType.deadlineExceeded);
    case 'cloud_firestore/unavailable':
      return DatabaseException(DatabaseExceptionType.unavailable);
    default:
      return DatabaseException(DatabaseExceptionType.unknown);
  }
}
