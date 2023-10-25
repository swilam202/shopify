import 'package:flutter/material.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';

class SearchSuggestionElement extends StatelessWidget {
  const SearchSuggestionElement({
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
