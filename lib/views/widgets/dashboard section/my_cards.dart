import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_card_page_view.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_dot.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_dot_indecator.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
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
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cards', style: AppStyles.styleSemiBold20(context)),
            Gap(20),
            CustomCardPageView(
              pageController: pageController,
              cardNum: cardNum,
            ),
            Gap(20),
            CustomDotIndecator(currentPage: currentPage, cards: cardNum),
          ],
        ),
      ),
    );
  }
}
