import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

//Circular Loading centered and constrained in a 40x40 box to avoid stretch
class CustomCircularLoading extends StatelessWidget {
  final Color? color;
  final double size;
  final EdgeInsets padding;

  const CustomCircularLoading({
    super.key,
    this.padding = const EdgeInsets.all(15),
    this.size = 40,
    this.color = UIColors.lightPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding,
        child: SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            color: color,
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}

class CustomLinearLoading extends StatelessWidget {
  final Color color;
  final double opacity;
  final double height;

  const CustomLinearLoading({
    super.key,
    this.height = 5,
    this.color = UIColors.lightPrimaryColor,
    this.opacity = 0.6,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: height,
      color: color,
      backgroundColor: color.withOpacity(opacity),
    );
  }
}
