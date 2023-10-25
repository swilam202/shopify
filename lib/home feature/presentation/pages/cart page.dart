import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/widgets/custom%20button.dart';

import '../../../core/styles/text styles.dart';
import '../widgets/cart bottom section.dart';
import '../widgets/cart listview.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Cart',
              style: TextStyles.style30Bold,
            ),
            SizedBox(height: 18),
            Expanded(
              child: CartListView(),
            ),
            SizedBox(height: 18),
            Divider(
              color: Colors.grey,
              endIndent: 20,
              indent: 20,
            ),
            CartBottomSection(),
          ],
        ),
      ),
    );
  }
}
