import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.hint});

  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' $title', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(
              context,
            ).copyWith(color: const Color(0xffAAAAAA)),
            fillColor: const Color(0xffFAFAFA),
            filled: true,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
