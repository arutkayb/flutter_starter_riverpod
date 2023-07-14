import 'package:flutter/material.dart';
import 'package:flutter_starter_riverpod/common/style/custom_style_color.dart';
import 'package:flutter_starter_riverpod/common/style/custom_style_size.dart';
import 'package:flutter_starter_riverpod/common/style/custom_style_text.dart';
import 'package:flutter_starter_riverpod/common/widget/custom_text.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function() onClick;
  final ButtonState state;
  final bool isBig;

  const CustomButton({
    required this.text,
    required this.onClick,
    required this.state,
    this.isBig = false,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final isEnabled = widget.state == ButtonState.enabled;
    final textStyle =
        widget.isBig ? CustomStyleText.bigButton : CustomStyleText.button;

    return GestureDetector(
      onTap: isEnabled ? widget.onClick : null,
      child: Container(
        padding: CustomStyleSize.edgeInsetsAllMedium,
        decoration: BoxDecoration(
          color:
              isEnabled ? CustomStyleColor.primary : CustomStyleColor.secondary,
          borderRadius: CustomStyleSize.borderRadiusLarge,
        ),
        child: isEnabled
            ? CustomText.withStyle(
                widget.text,
                textStyle.copyWith(
                  color: Colors.white,
                ))
            : CustomText.withStyle(
                widget.text,
                textStyle.copyWith(
                  color: Colors.black,
                )),
      ),
    );
  }
}

enum ButtonState { enabled, disabled }
