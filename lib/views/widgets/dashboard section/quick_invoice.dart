import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/buttons_lower_row.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_button.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_text_field.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/latest_transacion.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/lower_text_field_row.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/quick_invoice_header.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/upper_text_field_row.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24),
            LatestTransacion(),
            SizedBox(height: 24),
            Divider(color: Color(0xffF1F1F1)),
            SizedBox(height: 24),
            UpperTextFieldRow(),
            SizedBox(height: 24),
            LowerTextFieldRow(),
            SizedBox(height: 24),
            ButtonsLowerRow(),
          ],
        ),
      ),
    );
  }
}
