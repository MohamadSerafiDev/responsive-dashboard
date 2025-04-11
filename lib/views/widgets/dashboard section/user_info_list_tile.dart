import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
  });
  final Widget leading;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64),
      child: Card(
        elevation: 0,
        color: Color(0xfffafafa),
        child: ListTile(
          leading: leading,
          title: Text(title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
