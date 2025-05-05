import 'package:flutter/material.dart';
import 'package:resposive_learn/models/transaction_history_item_model.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_history_item.dart';

class TransactionItemsListview extends StatelessWidget {
  const TransactionItemsListview({super.key});

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
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionHistoryItem(item: items[index]);
      },
    );
  }
}
