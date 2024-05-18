import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/injection.dart';
import 'package:flutter/material.dart';

import 'package:ethiscan/utils/ui_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late MainUserBloc _mainUserBloc;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    _mainUserBloc = getIt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightPrimaryColor,
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _mainUserBloc.add(MainUserEvent.connect(
                  _emailController.text, _passwordController.text)),
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
