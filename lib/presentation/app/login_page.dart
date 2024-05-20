import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/presentation/app/custom_app.dart';
import 'package:ethiscan/presentation/core/buttons/primary_button.dart';
import 'package:ethiscan/presentation/core/buttons/secondary_button.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final MainUserBloc mainUserBloc;
  final String? error;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({required this.mainUserBloc, super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return CustomApp(
      key: const Key('DisconnectedApp'), // TODO use translated key
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: UIColors.lightPrimaryColor,
          title: const CustomH1W("Sign In"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              if (error != null && error!.isNotEmpty)
                Text(
                  error!,
                  style: const TextStyle(color: Colors.red),
                ),
              const SizedBox(height: 50),
              PrimaryButton(
                text: 'Sign In', // TODO : translate 'Sign In'
                onTap: () => mainUserBloc.add(MainUserEvent.connect(
                    _emailController.text, _passwordController.text)),
              ),
              const SizedBox(height: 20),
              SecondaryButton(
                  text: 'Register', // TODO : translate 'Register'
                  onTap: () => mainUserBloc.add(const MainUserEvent.goRegister()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
