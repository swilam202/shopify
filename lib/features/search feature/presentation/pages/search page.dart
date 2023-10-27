import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20text%20field.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20state.dart';
import 'package:hhhhhhhh/features/search%20feature/presentation/controller/search%20page%20cubit.dart';
import 'package:hhhhhhhh/features/search%20feature/presentation/controller/search%20page%20state.dart';

import '../widgets/search suggestion element.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> suggestions = [
      'Fashion',
      'Electronics',
      'Tools',
      'Decoration',
      'Cars'
    ];

                 return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Search',
              style: TextStyles.style30Bold,
            ),
            const SizedBox(height: 18),
            const CustomTextField(placeholder: 'Search Something'),
            const SizedBox(height: 20),
            const Text(
              'Recommended',
              style: TextStyles.style15Medium,
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              children: suggestions
                  .map((suggestion) => SearchSuggestionElement(suggestion: suggestion)).toList(),
            ),
          ],
        ),
      ),
    );

  }
}

