import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  final bool isNew;
  final String icon;
  final String title;
  final String? content;
  final String date;

  const NotificationCardWidget({
    Key? key,
    this.isNew = false,
    required this.icon,
    required this.title,
    this.content,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isNew ? Colors.grey[100] : Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            icon,
            width: 48,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                if(content != null)
                Text(content!),
                if(content != null)
                const SizedBox(height: 5),
                Text(
                  date,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
