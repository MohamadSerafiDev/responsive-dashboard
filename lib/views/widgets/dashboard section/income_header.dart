import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF1F1F1), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: 'Monthly', // Add this
              style: AppStyles.styleRegular16(context),
              borderRadius: BorderRadius.circular(12),
              padding: EdgeInsets.symmetric(horizontal: 12),
              items: [
                DropdownMenuItem(
                  value: 'Daily', // Add this
                  child: Text('Daily'),
                ),
                DropdownMenuItem(
                  value: 'Weekly', // Add this
                  child: Text('Weekly'),
                ),
                DropdownMenuItem(
                  value: 'Monthly', // Add this
                  child: Text('Monthly'),
                ),
                DropdownMenuItem(
                  value: 'Yearly', // Add this
                  child: Text('Yearly'),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
