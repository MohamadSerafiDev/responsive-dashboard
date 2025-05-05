import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_card_page_view.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_dot_indecator.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({
    super.key,
    required this.pageController,
    required this.cardNum,
    required this.currentPage,
  });

  final PageController pageController;
  final int cardNum;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Cards', style: AppStyles.styleSemiBold20(context)),
        Gap(20),
        CustomCardPageView(pageController: pageController, cardNum: cardNum),
        Gap(20),
        CustomDotIndecator(currentPage: currentPage, cards: cardNum),
      ],
    );
  }
}
