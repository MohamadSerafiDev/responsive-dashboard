import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class AllExpensesUpperRow extends StatelessWidget {
  const AllExpensesUpperRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffF1F1F1), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: 'Monthly', // Add this
              style: AppStyles.styleRegular16(context),
              borderRadius: BorderRadius.circular(12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              items: [
                const DropdownMenuItem(
                  value: 'Daily', // Add this
                  child: Text('Daily'),
                ),
                const DropdownMenuItem(
                  value: 'Weekly', // Add this
                  child: Text('Weekly'),
                ),
                const DropdownMenuItem(
                  value: 'Monthly', // Add this
                  child: Text('Monthly'),
                ),
                const DropdownMenuItem(
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
