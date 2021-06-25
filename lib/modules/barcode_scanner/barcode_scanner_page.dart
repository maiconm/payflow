import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcpdeScannerPage extends StatefulWidget {
  const BarcpdeScannerPage({ Key? key }) : super(key: key);

  @override
  _BarcpdeScannerPageState createState() => _BarcpdeScannerPageState();
}

class _BarcpdeScannerPageState extends State<BarcpdeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.background,
        ),
        backgroundColor: Colors.black,
        title: Text(
          "Escaneie o código de barras do boleto",
          style: TextStyles.buttonBackground,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SetLabelButtons(
        primaryLabel: "Inserir código do boleto",
        primaryOnPressed: () {},
        secondaryLabel: "Adicionar da galeria",
        secondaryOnPressed: () {},
      ),
    );
  }
}