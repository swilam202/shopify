import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/widgets/custom%20text%20field.dart';

import '../../../../core/styles/text styles.dart';
import '../widgets/result page grid.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: StyleColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: StyleColor.orangeColor,
          ),
        ),
        title: const CustomTextField(placeholder: 'Mobile'),
      ),
      body: const ResultPageGrid(),
    );
  }
}



