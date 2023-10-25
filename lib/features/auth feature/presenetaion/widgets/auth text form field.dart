import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';

import 'positions enum.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    required this.icon,
    required this.placeholder,
    required this.position,
  });

  final String placeholder;
  final IconData icon;
  final Positions position;
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      padding: const EdgeInsets.all(25),
      showCursor: true,
      prefix: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Icon(
          icon,
          size: 25,
        ),
      ),
      cursorColor: StyleColor.orangeColor,
      decoration: BoxDecoration(
          color: StyleColor.whiteColor,
          borderRadius: getRadius(position),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(5, 5),
            ),
          ]),
    );
  }
}

BorderRadius? getRadius(Positions position) {
  Radius radius = const Radius.circular(20);

  switch (position) {
    case (Positions.top):
      return BorderRadius.only(
        topLeft: radius,
        topRight: radius,
      );
    case (Positions.center):
      return null;

    case (Positions.buttom):
      return BorderRadius.only(
        bottomLeft: radius,
        bottomRight: radius,
      );
  }
}
