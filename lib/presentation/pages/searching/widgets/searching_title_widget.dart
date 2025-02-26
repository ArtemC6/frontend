import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class SearchingTitleWidget extends StatelessWidget {
  const SearchingTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Searching… It could take days.\nWe’ll notify you when\nsomeone is found',
        style: AppTextStyle.bodyLarge,
        textAlign: TextAlign.start,
      ),
    );
  }
}
