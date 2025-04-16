import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          ...List.generate(AllExpensesRowItems.items.length, (index) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: GestureDetector(
                  onTap: () {
                    if (selectedIndex != index) {
                      setState(() {
                        print('refreshed');
                        selectedIndex = index;
                      });
                    }
                  },
                  child:
                      selectedIndex == index
                          ? ActiveAllExpensesItem(
                            itemModel: AllExpensesRowItems.items[index],
                          )
                          : InActiveAllExpensesItem(
                            itemModel: AllExpensesRowItems.items[index],
                          ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
