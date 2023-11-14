import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';

class CustomLoadingState extends StatelessWidget {
  const CustomLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: StyleColor.whiteColor),
    );
  }
}