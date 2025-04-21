import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_button.dart';

class ButtonsLowerRow extends StatelessWidget {
  const ButtonsLowerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(text: 'Add more details')),
        SizedBox(width: 24),
        Expanded(
          child: CustomButton(text: 'Send Money', color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
