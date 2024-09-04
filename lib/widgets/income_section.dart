import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';

import 'icome_section_body.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        padding: 20,
        child: Column(
          children: [
            IncomeHeader(),
            SizedBox(
              height: 16,
            ),
            IncomeSectionBody()
          ],
        ));
  }
}

