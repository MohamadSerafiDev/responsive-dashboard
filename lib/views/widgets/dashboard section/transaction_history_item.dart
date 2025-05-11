import 'package:flutter/material.dart';
import 'package:resposive_learn/models/transaction_history_item_model.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});

  final TransactionHistoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xfffafafa),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListTile(
          contentPadding: const EdgeInsets.all(8),
          title: Text(item.title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(
            item.date,
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            item.amount,
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: item.isWithdrawl ? Colors.red : Colors.green),
          ),
        ),
      ),
    );
  }
}
