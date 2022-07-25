import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class FinancingCardWidget extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final bool isActive;

  const FinancingCardWidget({
    Key? key,
    required this.text,
    this.onPressed,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 72,
      decoration: BoxDecoration(
        color: isActive ? AppColors.accent : null,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isActive ? AppColors.accent : AppColors.grey, width: 2),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: onPressed as void Function()?,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: isActive ? Colors.white : AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

