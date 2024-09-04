import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

import 'custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
              title: 'Customer Email',
              hint: 'Type customer email',
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: 'Item name',
              hint: 'Type item name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
              title: 'Item mount',
              hint: 'USD',
            )),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Column(
//   children: [
//     Text(
//       'Item mount',
//       style: Styles.styleMedium16,
//     ),
//     SizedBox(
//       height: 12,
//     ),
//     DropdownMenu(hintText: 'usdt', dropdownMenuEntries: [
//       DropdownMenuEntry(label: 'usdt', value: 0),
//       DropdownMenuEntry(label: 'pepe', value: 1),
//       DropdownMenuEntry(label: 'bonk', value: 2),
//     ]),
//   ],
// ),
