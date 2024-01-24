
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_111/common_widgets/color.dart';
import 'package:flutter_application_111/common_widgets/const.dart';

class Button extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool isDisabled;
  final TextStyle? textStyle;
  final ButtonType buttonType;
  final bool isLoading;
  final double width;
  final double? padding;
  final double? height;
  final Widget? child;
  final double? borderRadius;
  const Button({
    this.child,
    this.padding,
    super.key,
    this.title,
    this.width = 100,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDisabled = false,
    this.textStyle,
    this.borderRadius,
    this.buttonType = ButtonType.primary,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: isDisabled
          ? SystemMouseCursors.forbidden
          : isLoading
              ? SystemMouseCursors.wait
              : SystemMouseCursors.click,
      onTap: () {
        if (onPressed != null && !isDisabled && !isLoading) {
          onPressed!();
        }
      },
      child: Container(
        height: height,
        padding: EdgeInsets.all(padding ?? 20),
        width: width,
        decoration: BoxDecoration(
          color: isDisabled
              ? const Color.fromARGB(26, 121, 121, 121)
              : buttonType == ButtonType.primary
                  ? UiColor.primaryColor
                  : buttonType == ButtonType.secondary
                      ? UiColor.greyColor
                      : buttonType == ButtonType.positive
                          ? UiColor.successColor
                          : buttonType == ButtonType.negative
                              ? UiColor.errorColor
                              : buttonType == ButtonType.warning
                                  ? UiColor.warningColor
                                  : buttonType == ButtonType.additional
                                      ? UiColor.darkGreyColor
                                      : UiColor.primaryColor,
          borderRadius: BorderRadius.circular(borderRadius ?? ThemeConst.defaultBorderRadiusSmall),
        ),
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!isLoading) const Spacer(),
                if (isLoading) CupertinoActivityIndicator(color: UiColor.extraDarkGreyColor),
                if (!isLoading && title != null)
                  Text(
                    title!,
                    style: textStyle ??
                        TextStyle(
                          color: isDisabled
                              ? UiColor.extraDarkGreyColor
                              : buttonType == ButtonType.secondary
                                  ? UiColor.extraDarkGreyColor
                                  : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                if (icon != null && !isLoading)
                  Padding(
                    padding: EdgeInsets.only(left: padding ?? 10),
                    child: child ??
                        Icon(icon,
                            color: isDisabled
                                ? UiColor.extraDarkGreyColor
                                : buttonType == ButtonType.secondary
                                    ? UiColor.extraDarkGreyColor
                                    : textStyle?.color ?? Colors.white,
                            size: 16),
                  ),
                if (!isLoading) const Spacer(),
              ],
            ),
      ),
    );
  }
}

class EdeftIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double borderRadius;
  final ButtonType buttonType;
  final bool showOutline;
  final bool isLoading;
  const EdeftIconButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius = 10,
    this.iconColor,
    this.icon = Icons.close,
    this.showOutline = false,
    this.isLoading = false,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 1),
      margin: const EdgeInsets.symmetric(vertical: 1),
      decoration: BoxDecoration(color: UiColor.greyColor, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onPressed,
        child: borderRadius >= 50
            ? CircleAvatar(
                backgroundColor: backgroundColor ?? UiColor.greyColor,
                child: Icon(icon, color: iconColor ?? UiColor.greyColor),
              )
            : Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: backgroundColor ?? UiColor.greyColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: showOutline ? Border.all(color: UiColor.greyColor, width: 1) : null,
                ),
                child: isLoading
                    ? const CupertinoActivityIndicator()
                    : Icon(
                        icon,
                        size: 20,
                        color: iconColor ?? UiColor.greyColor,
                      )),
      ),
    );
  }
}

//Types of buttons:
enum ButtonType { primary, secondary, positive, negative, warning, additional }
