import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileapp/presentation/utils/ui_colors.dart';

class CustomBox extends StatelessWidget {
  final Color color;
  final Widget? child;
  final BoxShape boxShape;
  final bool expand;
  final EdgeInsets innerPadding;

  const CustomBox({
    Key? key,
    this.child,
    this.color = UIColors.white,
    this.boxShape = BoxShape.rectangle,
    this.expand = false,
    this.innerPadding = const EdgeInsets.all(15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: expand ? double.infinity : null,
      decoration: BoxDecoration(
        shape: boxShape,
        color: color,
        borderRadius:
            boxShape != BoxShape.circle ? BorderRadius.circular(12) : null,
        boxShadow: [
          BoxShadow(color: UIColors.black.withOpacity(0.1), blurRadius: 8),
        ],
      ),
      child: Padding(
        padding: innerPadding,
        child: child,
      ),
    );
  }
}
