import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/controller/cart%20cubit.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/pages/checkout%20page.dart';

import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom button.dart';



class CartBottomSection extends StatelessWidget {
  const CartBottomSection({super.key,required this.buttonText,required this.total,});
  final String buttonText;
  final num total;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      
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
                '\$ $total',
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
              onPressed: () async{
               await BlocProvider.of<CartCubit>(context).loadData();
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckoutPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
