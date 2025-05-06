import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_history_header.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_items_listview.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        Gap(16),
        TransactionItemsListview(),
      ],
    );
  }
}
