import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

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
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: "Inserir código do boleto",
              onPressed: () {
                print("clicou");
              },
            ),
          ),
          Expanded(
            child: LabelButton(
              label: "Adicionar da galeria",
              onPressed: () {
                print("clicou");
              },
            ),
          ),
        ]
      ),
    );
  }
}