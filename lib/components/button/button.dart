import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/loading/loading.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.bgColor,
    this.child,
    this.onPressed,
    this.width,
    this.textColor,
    this.isLoading = false,
    this.isPrimary = true,
  });

  final void Function()? onPressed;
  final String? title;
  final Widget? child;
  final Color? bgColor;
  final Color? textColor;
  final bool? isPrimary;
  final bool? isLoading;
  final double? width;

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   onPressed: onPressed,
    //   style: ButtonStyle(
    //     shape: WidgetStatePropertyAll(
    //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    //     ),
    //     backgroundColor: WidgetStatePropertyAll(
    //       bgColor ??
    //           (isPrimary == true
    //               ? CustomColors.primary
    //               : CustomColors.forground),
    //     ),
    //   ),
    //   child: Center(
    //     child: title != null
    //         ? Text(
    //             title!,
    //             style: CustomTextStyle.title(
    //               color: textColor ?? CustomColors.background,
    //               fontWeight: FontWeight.w900,
    //             ),
    //           )
    //         : child,
    //   ),
    // );
    return CupertinoButton(
      onPressed: isLoading == true ? null : onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 56,
        width: width ?? (isLoading == true ? 56 : Get.width),

        decoration: BoxDecoration(
          color: isLoading == true
              ? bgColor != null
                    ? bgColor!.withValues(alpha: .5)
                    : (isPrimary == true
                          ? CustomColors.primary.withValues(alpha: .5)
                          : CustomColors.background)
              : bgColor ??
                    (isPrimary == true
                        ? CustomColors.primary
                        : CustomColors.background),
          borderRadius: BorderRadius.circular(100),
          border: isPrimary == true
              ? null
              : Border.all(color: CustomColors.primary, width: 3),
        ),
        child: Center(
          child: isLoading == true
              ? customLoading(
                  color:
                      textColor ??
                      (isPrimary == true
                          ? CustomColors.background
                          : CustomColors.primary),
                )
              : Text(
                  title!,
                  style: CustomTextStyle.title(
                    fontSize: 20,
                    color:
                        textColor ??
                        (isPrimary == true
                            ? CustomColors.background
                            : CustomColors.primary),
                    fontWeight: FontWeight.w900,
                  ),
                ),
        ),
      ),
    );
  }
}
