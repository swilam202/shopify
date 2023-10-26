import 'package:flutter/material.dart';

import '../../../../core/styles/text styles.dart';

class CheckoutUserDataSection extends StatelessWidget {
  const CheckoutUserDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Checkout', style: TextStyles.style30Bold),
        SizedBox(height: 17),
        Text('SHIPPING ADDRESS', style: TextStyles.style12Medium),
        SizedBox(height: 8),
        Text('John Doe', style: TextStyles.style15Medium),
        SizedBox(height: 5),
        Text('No 123, Sub Street,', style: TextStyles.style15Regular),
        Text('Main Street,', style: TextStyles.style15Regular),
        Text('City Name, Province,', style: TextStyles.style15Regular),
        Text('Country', style: TextStyles.style15Regular),
      ],
    );
  }
}
