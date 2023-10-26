import 'package:flutter/material.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';



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
                child: Image.asset(
                  'assets/images/test1.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 4, left: 10),
                child: Text(
                  'Ankle Boots',
                  style: TextStyles.style15Light,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 8, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$49.99',
                      style: TextStyles.style12Bold,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: StyleColor.orangeColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: StyleColor.whiteColor,
                            size: 10,
                          ),
                          Text(
                            '4.9',
                            style: TextStyles.style9Bold,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
   
  }
}