import 'package:flutter/material.dart';

import '../../../../core/styles/text styles.dart';

class CheckoutPaymentSection extends StatelessWidget {
  const CheckoutPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('PAYMENT METHOD', style: TextStyles.style12Medium),
        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text('Master Card ending 2800',
              style: TextStyles.style15Medium),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.forward),
          ),
        ),
      ],
    );
  }
}
