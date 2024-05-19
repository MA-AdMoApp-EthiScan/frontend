import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/presentation/app/custom_app.dart';
import 'package:ethiscan/presentation/core/buttons/primary_button.dart';
import 'package:ethiscan/presentation/core/buttons/secondary_button.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

class RegisterPage extends StatefulWidget {
  final MainUserBloc mainUserBloc;
  const RegisterPage({super.key, required this.mainUserBloc});

  @override
  State<RegisterPage> createState() => _RegisterPage(mainUserBloc: mainUserBloc);
}

class _RegisterPage extends State<RegisterPage> {
  final double screenWidth = 0;
  final MainUserBloc mainUserBloc;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _password2Controller = TextEditingController();

  _RegisterPage({required this.mainUserBloc});

  @override
  Widget build(BuildContext context) {

    return CustomApp(
      key: const Key('DisconnectedApp'), // TODO use translated key
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: UIColors.lightPrimaryColor,
          title: const CustomH1W("Create account"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*CustomPaint(
                size: Size(width, (width * 0.21944444444444444).toDouble()),
                painter: TopShape(),
              ),*/
              CustomTextField(
                controller: _emailController,
                placeholder: 'Email',
                label: 'Email',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _passwordController,
                label: 'Password', // TODO : translate 'Password
                placeholder: 'Password',
                password: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _password2Controller,
                label: 'Confirm password', // TODO : translate 'Password
                placeholder: 'Password',
                password: true,
                errorMessage: _passwordController.text != _password2Controller.text
                    ? 'Passwords do not match'
                    : null,
                error: _passwordController.text != _password2Controller.text,
              ),
              const SizedBox(height: 50),
              PrimaryButton(
                text: 'Create account', // TODO : translate 'Sign In'
                onTap: () => mainUserBloc.add(MainUserEvent.register(
                    _emailController.text, _passwordController.text)),
              ),
              const SizedBox(height: 20),
              SecondaryButton(
                text: 'Login', // TODO : translate 'Register'
                onTap: () => mainUserBloc.add(const MainUserEvent.goLogin()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
