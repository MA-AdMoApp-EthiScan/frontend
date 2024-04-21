// This is the abstract class that will be used to authenticate the user
abstract class AuthRepository {
    Future<void> signIn(String email, String password);
    Future<void> signOut();
    // Future<String> getCurrentUID();
    // Future<void> register(String email, String password);
    // Future<bool> isUserLoggedIn();
}
