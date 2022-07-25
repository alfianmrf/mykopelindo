import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';

class InputWidget extends StatelessWidget {
  final String hint;
  final Color color;
  final bool password;
  final TextInputType? keyboard;
  final IconData? prefixIcon;

  const InputWidget({
    Key? key,
    required this.hint,
    required this.color,
    this.password = false,
    this.keyboard,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(primary: Colors.white),
      ),
      child: TextFormField(
        obscureText: password,
        keyboardType: keyboard,
        style: const TextStyle(
          letterSpacing: 0.5,
          fontFamily: AppStrings.fontFamily,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
            letterSpacing: 0.5,
            fontFamily: AppStrings.fontFamily,
            color: Colors.white.withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
          fillColor: color,
          prefixIcon: prefixIcon != null
            ? Icon(prefixIcon)
            : null,
        ),
      ),
    );
  }
}
