import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/latest_transacion_list_view.dart';

class LatestTransacion extends StatelessWidget {
  const LatestTransacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transacion', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 16),
        const LatestTransacionListView(),
      ],
    );
  }
}
