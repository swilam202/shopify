import 'package:flutter/material.dart';

import '../../../../core/styles/text styles.dart';

class CheckoutPaymentSection extends StatelessWidget {
  const CheckoutPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PAYMENT METHOD',
          style: TextStyles.style12Medium.copyWith(
            color: const Color(0xff515C6F).withOpacity(0.5),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text(
            'Master Card ending 2800',
            style: TextStyles.style15Medium,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.forward),
          ),
        ),
      ],
    );
  }
}
