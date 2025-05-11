import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/models/transaction_history_item_model.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_history_header.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_history_item.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  static List<TransactionHistoryItemModel> items = [
    TransactionHistoryItemModel(
      title: 'Cash Withdrawal',
      date: '13 April 2022',
      amount: r'$20,194',
      isWithdrawl: true,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,194',
      isWithdrawl: false,
    ),
    TransactionHistoryItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,194',
      isWithdrawl: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        const Gap(16),
        ...items.map((item) => TransactionHistoryItem(item: item)),
      ],
    );
  }
}
