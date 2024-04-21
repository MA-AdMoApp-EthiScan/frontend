import 'package:flutter/material.dart';
import 'package:ethiscan/domain/repositories/auth_repository.dart';

class AuthenticationProvider extends ChangeNotifier {
    final AuthRepository authRepository;

    AuthenticationProvider(this.authRepository);

    Future<void> login(String email, String password) async {
        try {
            await authRepository.signIn(email, password);
            notifyListeners();
        } catch (e) {
            print("Login error: $e");
            notifyListeners();
        }
    }

}