import 'package:flutter/material.dart';
import 'package:resposive_learn/models/user_info_model.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/user_info_list_tile.dart';

class LatestTransacionListView extends StatelessWidget {
  const LatestTransacionListView({super.key});
  static List<UserInfoModel> users = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesPerson,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesPerson,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesPerson,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesPerson,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: Assets.imagesPerson,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,

        itemBuilder: (BuildContext context, int index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: users[index]),
          );
        },
      ),
    );
  }
}
