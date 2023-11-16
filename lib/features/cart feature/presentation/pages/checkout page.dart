import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20divider.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/widgets/cart%20bottom%20section.dart';

import '../widgets/checkout payment section.dart';
import '../widgets/checkout user data section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CheckoutUserDataSection(),
              SizedBox(height: 20),
              CustomDivider(),
              SizedBox(height: 18),
              CheckoutPaymentSection(),
              SizedBox(height: 18),
              CustomDivider(),
              Spacer(),
              CartBottomSection(buttonText: 'Place Order',total: 22.0),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
