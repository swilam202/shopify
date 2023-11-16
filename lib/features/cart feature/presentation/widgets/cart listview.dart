import 'package:flutter/material.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';

import 'cart listview item.dart';



class CartListView extends StatelessWidget {
  const CartListView({super.key,required this.data});
  final List<CartData> data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return  CartListViewItem(data[index]);
      },
    );
  }
}