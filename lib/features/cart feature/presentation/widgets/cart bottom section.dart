import 'package:flutter/material.dart';

import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom button.dart';



class CartBottomSection extends StatelessWidget {
  const CartBottomSection({super.key,required this.buttonText,});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          const Column(
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
         const  SizedBox(width: 39),
          Expanded(
            child: CustomButton(
              widget: Text(buttonText),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
