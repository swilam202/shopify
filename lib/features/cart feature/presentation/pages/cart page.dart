import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/widgets/custom%20button.dart';
import 'package:hhhhhhhh/core/widgets/states/custom%20loading.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/controller/cart%20cubit.dart';

import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom divider.dart';
import '../controller/cart state.dart';
import '../widgets/cart bottom section.dart';
import '../widgets/cart listview.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: BlocBuilder<CartCubit,CartPageState>(
            builder: (context, state) {
              if(state is CartPageSuccessState){
                 return   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Cart',
                style: TextStyles.style30Bold,
              ),
              SizedBox(height: 18),
              Expanded(
                child: CartListView(data: state.cart.data!),
              ),
              SizedBox(height: 18),
              CustomDivider(),
              CartBottomSection(buttonText: 'Checkout',total: state.cart.total!),
            ],
          );
              }
              else {
                return const CustomLoadingState();
              }
             
       
            },
          ),
          
           ),
      ),
    );
  }
}
