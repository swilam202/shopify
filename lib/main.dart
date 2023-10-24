import 'package:flutter/material.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/pages/auth%20page.dart';

void main() {
  runApp(const Shopify());
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthPage(),
    );
  }
}
