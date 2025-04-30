import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(Assets.imagesCardWaves).image,
            fit: BoxFit.cover,
          ),
          color: Color(0xff5bbcf3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card name',
                        style: AppStyles.styleRegular16(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                      Gap(8),
                      Text(
                        'Syah Bandi',
                        style: AppStyles.styleMedium20(context),
                      ),
                    ],
                  ),
                  SvgPicture.asset(Assets.imagesPhoto, width: 32),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '12/22 - 124',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
            Gap(30),
          ],
        ),
      ),
    );
  }
}
