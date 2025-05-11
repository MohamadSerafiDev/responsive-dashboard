import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_and_quick_invoice_section.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_chart.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_header.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_section_body.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/my_cards_and_transactions_history.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print(width);
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpensesAndQuickInvoiceSection(),
          const Gap(24),
          const MyCardsAndTransactionsHistory(),
          const Gap(24),
          Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: CustomBackgroundContainer(
              child:
                  width < 410
                      ? const Column(
                        children: [
                          IncomeHeader(),
                          Gap(20),
                          const Row(
                            children: [
                              Expanded(child: IncomeChart(showTitle: true)),
                            ],
                          ),
                        ],
                      )
                      : const Column(
                        children: [
                          IncomeHeader(),
                          Gap(20),
                          IncomeSectionBody(),
                        ],
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
