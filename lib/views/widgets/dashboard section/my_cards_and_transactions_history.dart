import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/my_cards_section.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/transaction_history_section.dart';

class MyCardsAndTransactionsHistory extends StatefulWidget {
  const MyCardsAndTransactionsHistory({super.key});

  @override
  State<MyCardsAndTransactionsHistory> createState() =>
      _MyCardsAndTransactionsHistoryState();
}

class _MyCardsAndTransactionsHistoryState
    extends State<MyCardsAndTransactionsHistory> {
  late PageController pageController;
  int currentPage = 0;
  int cardNum = 7;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            MyCardsSection(
              pageController: pageController,
              cardNum: cardNum,
              currentPage: currentPage,
            ),
            Gap(20),
            Divider(color: Color(0xffF1F1F1)),
            Gap(20),
            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
