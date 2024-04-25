import 'package:ethiscan/utils/text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const CustomText(this.text, {Key? key, this.style = TextStyles.text, this.align}) : super(key: key);

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
  const CustomH1(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.h1, align: align);
}

class CustomH2 extends CustomText {
  const CustomH2(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.h2, align: align);
}

class CustomH3 extends CustomText {
  const CustomH3(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.h3, align: align);
}

class CustomTextBold extends CustomText {
  const CustomTextBold(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.textBold, align: align);
}

class CustomTextBoldColor extends CustomText {
  CustomTextBoldColor(String text, {Key? key, TextAlign? align, required Color color})
      : super(text,  key: key, style: TextStyles.textBoldColor(color), align: align);
}

class CustomTextSmall extends CustomText {
  const CustomTextSmall(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.smallBold, align: align);
}

class CustomTextSmallColor extends CustomText {
  const CustomTextSmallColor(String text, {Key? key, TextAlign? align})
      : super(text,  key: key, style: TextStyles.smallBoldColor, align: align);
}
