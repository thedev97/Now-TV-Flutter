import 'package:flutter/material.dart';
import 'now_tv_base_button.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';

class NowTvElevatedButton extends NowTvBaseButton {
  const NowTvElevatedButton(
      {super.key,
      this.decoration,
      this.leftIcon,
      this.rightIcon,
      super.margin,
      super.onPressed,
      super.buttonStyle,
      super.alignment,
      super.buttonTextStyle,
      super.isDisabled,
      super.height,
      super.width,
      required super.text});

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget)
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 40.0,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color(0xff01dc9d).withOpacity(0.8)),
            shadowColor:
                MaterialStateProperty.all(Colors.black.withOpacity(0.25)),
            elevation: MaterialStateProperty.all(8),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(text,
                  style: buttonTextStyle ??
                      theme.textTheme.titleMedium),
              rightIcon ?? const SizedBox.shrink()
            ],
          ),
        ),
      );
}
