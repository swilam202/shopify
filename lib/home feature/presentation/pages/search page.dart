import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20text%20field.dart';

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
                  .map(
                    (suggestion) =>
                        SearchSuggestionContainer(suggestion: suggestion),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchSuggestionContainer extends StatelessWidget {
  const SearchSuggestionContainer({
    super.key,
    required this.suggestion,
  });

  final String suggestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: StyleColor.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 0.5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        suggestion,
        style: TextStyles.style15Regular,
        textAlign: TextAlign.center,
      ),
    );
  }
}
