import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_learn/models/user_info_model.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.name,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoModel.email,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
