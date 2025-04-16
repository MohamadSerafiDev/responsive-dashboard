import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: [QuickInvoiceHeader()]),
      ),
    );
  }
}
