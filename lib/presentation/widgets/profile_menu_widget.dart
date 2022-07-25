import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class ProfileMenuWidget extends StatelessWidget {
  final String leading;
  final String title;
  final Function? onPressed;
  final bool isLastIndex;

  const ProfileMenuWidget({
    Key? key,
    required this.leading,
    required this.title,
    this.onPressed,
    this.isLastIndex = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function()?,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(leading),
              color: AppColors.accent,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: isLastIndex ? BorderSide.none : const BorderSide(
                      color: AppColors.grey,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.chevron_right,
                      color: AppColors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
