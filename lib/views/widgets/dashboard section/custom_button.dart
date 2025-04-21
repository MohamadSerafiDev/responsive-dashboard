import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},

      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: color ?? Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
      child: Text(
        text,
        style:
            color == Color(0xff4EB7F2)
                ? AppStyles.styleBold16(context).copyWith(color: Colors.white)
                : AppStyles.styleBold16(context),
      ),
    );
  }
}
