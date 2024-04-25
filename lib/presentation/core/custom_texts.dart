import 'package:ethiscan/utils/text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const CustomText(this.text, {super.key, this.style = TextStyles.text, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: align,
    );
  }
}

class CustomH1 extends CustomText {
  const CustomH1(super.text, {super.key, super.align})
      : super(style: TextStyles.h1);
}

class CustomH2 extends CustomText {
  const CustomH2(super.text, {super.key, super.align})
      : super(style: TextStyles.h2);
}

class CustomH3 extends CustomText {
  const CustomH3(super.text, {super.key, super.align})
      : super(style: TextStyles.h3);
}

class CustomTextBold extends CustomText {
  const CustomTextBold(super.text, {super.key, super.align})
      : super(style: TextStyles.textBold);
}

class CustomTextBoldColor extends CustomText {
  CustomTextBoldColor(super.text, {super.key, super.align, required Color color})
      : super(style: TextStyles.textBoldColor(color));
}

class CustomTextSmall extends CustomText {
  const CustomTextSmall(super.text, {super.key, super.align})
      : super(style: TextStyles.smallBold);
}

class CustomTextSmallColor extends CustomText {
  const CustomTextSmallColor(super.text, {super.key, super.align})
      : super(style: TextStyles.smallBoldColor);
}
