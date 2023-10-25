import 'package:flutter/material.dart';

import '../../../core/styles/text styles.dart';
import '../../../core/widgets/custom button.dart';


class CartBottomSection extends StatelessWidget {
  const CartBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'TOTAL',
                style: TextStyles.style12Medium,
              ),
              Text(
                '\$81.57',
                style: TextStyles.style20Bold,
              ),
              Text(
                'Free Domestic Shipping',
                style: TextStyles.style12Regular,
              ),
            ],
          ),
          SizedBox(width: 39),
          Expanded(
            child: CustomButton(
              text: 'Checkout',
            ),
          ),
        ],
      ),
    );
  }
}
