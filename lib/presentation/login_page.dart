import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/buttons/primary_button.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
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
            CustomTextField(
              controller: _emailController,
            ),
            CustomTextField(
              controller: _passwordController,
              password: true,
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              text: 'Sign In',
              onTap: () => _mainUserBloc.add(MainUserEvent.connect(
                  _emailController.text, _passwordController.text)),
            ),
          ],
        ),
      ),
    );
  }
}
