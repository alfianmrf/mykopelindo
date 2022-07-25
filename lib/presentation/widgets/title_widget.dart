import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  final Function? onPressedReadMore;

  const TitleWidget({
    required this.text,
    this.onPressedReadMore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          if(onPressedReadMore != null)
          const SizedBox(width: 10),
          if(onPressedReadMore != null)
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onPressedReadMore as void Function()?,
              child: const Text(
                'Lihat Semua',
                style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
