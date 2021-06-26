import 'package:flutter/material.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/billet_indo/billet_info.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list_controller.dart';

class MyBilletsPage extends StatefulWidget {

  MyBilletsPage({ Key? key }) : super(key: key);

  @override
  _MyBilletsPageState createState() => _MyBilletsPageState();
}

class _MyBilletsPageState extends State<MyBilletsPage> {

  final controller = BilletListController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: AppColors.primary,
              height: 40,
              width: double.maxFinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ValueListenableBuilder<List<BilletModel>>(
                valueListenable: controller.billetNotifier,
                builder: (_, billets, __) => BilletInfo(amount: billets.length,),
              ),
            ),
          ]
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                "Meus Boletos",
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24,),
          child: Divider(
            color: AppColors.stroke,
            height: 1,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BilletList(controller: controller,),
        ),
      ],
    );
  }
}