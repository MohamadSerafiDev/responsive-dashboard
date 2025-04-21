import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_text_field.dart';

class LowerTextFieldRow extends StatelessWidget {
  const LowerTextFieldRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            title: 'Customer Phone',
            hint: 'Type Customer Phone',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: CustomTextField(
            title: 'Money amount',
            hint: 'Type Money amount',
          ),
        ),
      ],
    );
  }
}
