import 'package:ethiscan/utils/text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const CustomText(this.text,
      {super.key, this.style = TextStyles.text, this.align});

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
  CustomH1(super.text, {super.key, super.align})
      : super(style: TextStyles.h1);
}

class CustomH1W extends CustomText {
  CustomH1W(super.text, {super.key, super.align})
      : super(style: TextStyles.h1w);
}

class CustomH1P extends CustomText {
  CustomH1P(super.text, {super.key, super.align})
      : super(style: TextStyles.h1p);
}

class CustomH2 extends CustomText {
  CustomH2(super.text, {super.key, super.align})
      : super(style: TextStyles.h2);
}

class CustomH2R extends CustomText {
  CustomH2R(super.text, {super.key, super.align})
      : super(style: TextStyles.h2R);
}

class CustomH2P extends CustomText {
  CustomH2P(super.text, {super.key, super.align})
      : super(style: TextStyles.h2p);
}

class CustomH3 extends CustomText {
  CustomH3(super.text, {super.key, super.align})
      : super(style: TextStyles.h3);
}

class CustomTextBold extends CustomText {
  CustomTextBold(super.text, {super.key, super.align})
      : super(style: TextStyles.textBold);
}

class CustomTextBoldColor extends CustomText {
  CustomTextBoldColor(super.text,
      {super.key, super.align, required Color color})
      : super(style: TextStyles.textBoldColor(color));
}

class CustomTextSmall extends CustomText {
  CustomTextSmall(super.text, {super.key, super.align})
      : super(style: TextStyles.smallBold);
}

class CustomTextSmallColor extends CustomText {
  CustomTextSmallColor(super.text, {super.key, super.align})
      : super(style: TextStyles.smallBoldColor);
}
