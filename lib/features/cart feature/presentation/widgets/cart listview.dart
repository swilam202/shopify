import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/widgets/custom%20divider.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';

import 'cart listview item.dart';



class CartListView extends StatelessWidget {
  const CartListView({super.key,required this.data});
  final List<CartData> data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return  CartListViewItem(data[index]);
      },
      separatorBuilder: (context, index) {
        return CustomDivider();
      },
    );
  }
}