import 'package:ethiscan/presentation/core/top_shape.dart';
import 'package:flutter/material.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    final width =
        screenWidth == 0 ? MediaQuery.of(context).size.width : screenWidth;

    return Stack(
      children: [
        Column(
          children: [
            CustomPaint(
              size: Size(width, (width * 0.21944444444444444).toDouble()),
              painter: TopShape(),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomH1('Create Account'),
            ),
            const SizedBox(height: 20),
          ],
        )
      ],
    );
  }
}
