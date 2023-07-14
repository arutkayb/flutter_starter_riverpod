import 'package:flutter/widgets.dart';
import 'package:flutter_starter_riverpod/common/style/custom_style_text.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle _style;

  const CustomText.withStyle(this.text, this._style, {super.key});

  CustomText.h1(this.text, {Color? textColor, super.key})
      : _style = CustomStyleText.h1.copyWith(color: textColor);

  CustomText.h2(this.text, {Color? textColor, super.key})
      : _style = CustomStyleText.h2.copyWith(color: textColor);

  CustomText.h3(this.text, {Color? textColor, super.key})
      : _style = CustomStyleText.h3.copyWith(color: textColor);

  CustomText.p(this.text, {Color? textColor, super.key})
      : _style = CustomStyleText.p.copyWith(color: textColor);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _style,
      textAlign: TextAlign.center,
    );
  }
}
