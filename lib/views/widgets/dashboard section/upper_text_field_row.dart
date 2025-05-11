import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_text_field.dart';

class UpperTextFieldRow extends StatelessWidget {
  const UpperTextFieldRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTextField(
            title: 'Customer name',
            hint: 'Type customer name',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: CustomTextField(
            title: 'Customer Email',
            hint: 'Type Customer Email',
          ),
        ),
      ],
    );
  }
}
