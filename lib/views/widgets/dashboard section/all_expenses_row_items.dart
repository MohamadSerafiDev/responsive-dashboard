import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/models/all_expenses_item_model.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/active_and_inactive_all_expenses_item.dart';

class AllExpensesRowItems extends StatefulWidget {
  const AllExpensesRowItems({super.key});
  static final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      balance: r'$20,129',
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      balance: r'$20,129',
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      balance: r'$20,129',
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
    ),
  ];

  @override
  State<AllExpensesRowItems> createState() => _AllExpensesRowItemsState();
}

class _AllExpensesRowItemsState extends State<AllExpensesRowItems> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  print('refreshed');
                  selectedIndex = 0;
                });
              }
            },
            child:
                selectedIndex == 0
                    ? ActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[0],
                    )
                    : InActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[0],
                    ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  print('refreshed');
                  selectedIndex = 1;
                });
              }
            },
            child:
                selectedIndex == 1
                    ? ActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[1],
                    )
                    : InActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[1],
                    ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 2) {
                setState(() {
                  print('refreshed');
                  selectedIndex = 2;
                });
              }
            },
            child:
                selectedIndex == 2
                    ? ActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[2],
                    )
                    : InActiveAllExpensesItem(
                      itemModel: AllExpensesRowItems.items[2],
                    ),
          ),
        ),
      ],
    );
  }
}
