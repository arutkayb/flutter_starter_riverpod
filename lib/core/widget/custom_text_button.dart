import 'package:flutter/widgets.dart';
import 'package:flutter_starter_riverpod/core/style/custom_style_size.dart';
import 'package:flutter_starter_riverpod/core/style/custom_style_text.dart';
import 'package:flutter_starter_riverpod/core/widget/custom_text.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final Function() onClick;
  final TextButtonVariant variant;

  const CustomTextButton({
    required this.text,
    required this.onClick,
    this.variant = TextButtonVariant.inactive,
    super.key,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomStyleSize.edgeInsetsAllMedium,
      child: GestureDetector(
        onTap: widget.onClick,
        child: CustomText.withStyle(
          widget.text,
          widget.variant == TextButtonVariant.inactive
              ? CustomStyleText.buttonUnderline
              : CustomStyleText.button,
        ),
      ),
    );
  }
}

enum TextButtonVariant { active, inactive }
