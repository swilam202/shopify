import 'package:flutter/material.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/usecase/add%20remove%20cart%20usecase.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/usecase/update%20cart%20usecase.dart';

import '../../../../core/services/service locator.dart';
import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';




class CartListViewItem extends StatelessWidget {
  const CartListViewItem(this.cartData,{super.key});
  final CartData cartData;
  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> valueNotifier = ValueNotifier(cartData.quantity);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: MediaQuery.of(context).size.height *0.15,
          width: MediaQuery.of(context).size.width *0.3,
         
            color: StyleColor.whiteColor,
            
            
        
          child: Image.network(
            cartData.image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartData.name,
                style: TextStyles.style15Medium,
                maxLines: 2,

              ),
              
              const SizedBox(height: 11),
               Text(
                '\$ ${cartData.price.toStringAsFixed(1)}',
                style: TextStyles.style15Medium,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      if(valueNotifier.value > 1)
                       { valueNotifier.value--;
                      sl.get<UpdateCartUsecase>().excute(valueNotifier.value,cartData.id);}
                        },
                    icon: const Icon(Icons.remove),
                  ),
                   ValueListenableBuilder(valueListenable: valueNotifier, builder: (context, value, child) {
                     return Text(
                       value.toString(),
                       style: TextStyles.style15Regular,
                     );
                   },),
                  IconButton(
                    onPressed: () {
                      valueNotifier.value++;
                      sl.get<UpdateCartUsecase>().excute(valueNotifier.value,cartData.id);
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                     sl.get<AddRemoveCartUseCase>().excute(cartData.productId);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
