import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final bool isFullWidth;
  final double fontSize;
  final double borderRadius;
  final double padding;
  final IconData? icon;
  final FontWeight fontWeight;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
    this.isFullWidth = false,
    required this.fontSize,
    this.borderRadius = 0,
    this.padding = 8,
    this.icon,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(padding),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        minimumSize: isFullWidth ? const Size.fromHeight(48) : const Size(0, 0),
        primary: AppColors.accent,
      ),
      onPressed: onPressed as void Function()?,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
          if(icon != null)
          const SizedBox(width: 2),
          if(icon != null)
          Icon(
            icon,
            size: 20,
          ),
        ],
      ),
    );
  }
}
