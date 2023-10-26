import 'package:flutter/material.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/rating container.dart';



class ResultPageGridItem extends StatelessWidget {
  
  const ResultPageGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            color: StyleColor.whiteColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 0.6,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/test1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 4, left: 10),
                child: Text(
                  'Ankle Boots',
                  style: TextStyles.style15Light,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 8, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$49.99',
                      style: TextStyles.style12Bold,
                    ),
                    RatingContainer(),
                  ],
                ),
              ),
            ],
          ),
        );
   
  }
}