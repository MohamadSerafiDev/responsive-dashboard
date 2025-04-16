import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class AllExpensesUpperRow extends StatelessWidget {
  const AllExpensesUpperRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF1F1F1), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                borderRadius: BorderRadius.circular(12),
                padding: EdgeInsets.symmetric(horizontal: 12),
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Monthly',
                      style: AppStyles.styleRegular16(context),
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
