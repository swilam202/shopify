import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/style colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.placeholder,
  });

  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      textAlign: TextAlign.center,
      padding: const EdgeInsets.all(12),
      showCursor: true,
      cursorColor: StyleColor.orangeColor,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 230, 231, 234),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}
