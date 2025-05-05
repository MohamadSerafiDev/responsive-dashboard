class TransactionHistoryItemModel {
  TransactionHistoryItemModel({
    required this.isWithdrawl,
    required this.title,
    required this.date,
    required this.amount,
  });
  final String title, date, amount;
  final bool isWithdrawl;
}
