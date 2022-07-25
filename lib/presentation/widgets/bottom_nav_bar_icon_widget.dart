import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class BottomNavBarIconWidget extends StatelessWidget {
  final Function? onPressed;
  final bool isActive;
  final int index;
  final String activeIcon;
  final String icon;
  final double size;
  final int notification;

  const BottomNavBarIconWidget({
    this.onPressed,
    required this.isActive,
    required this.index,
    required this.activeIcon,
    required this.icon,
    required this.size,
    this.notification = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          type: MaterialType.transparency,
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          child: IconButton(
            enableFeedback: false,
            onPressed: onPressed as void Function()?,
            icon: isActive
                ? ImageIcon(
              AssetImage(activeIcon),
              color: AppColors.accent,
              size: size,
            )
                : ImageIcon(
              AssetImage(icon),
              color: index < 2 ? AppColors.grey : Colors.white,
              size: size,
            ),
          ),
        ),
        if(notification > 0)
        Positioned(
          top: 4,
          right: 1,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: AppColors.red,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                notification.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
