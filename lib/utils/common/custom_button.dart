//import 'package:employee_onboarding/utils/components/ui_helpers.dart';
import 'package:ebook_app/utils/components/ui_helpers.dart';
import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Widget child;
  final IconData? iconData;
  final Color iconColor;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderColor,
    required this.child,
    this.iconData,
    required this.iconColor,
    String? value,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: iconData == null
          ? Container()
          : Icon(
              iconData,
              color: iconColor,
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        fixedSize: Size(UIHelpers.screenHeight(context) * 0.2, 12),
      ),
      label: child,
    );
  }
}
