import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/card_widget.dart';

class CustomCardPageView extends StatelessWidget {
  const CustomCardPageView({
    super.key,
    required this.pageController,
    required this.cardNum,
  });
  final PageController pageController;
  final int cardNum;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        cardNum,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 20),
          child: CardWidget(),
        ),
      ),
    );
  }
}
