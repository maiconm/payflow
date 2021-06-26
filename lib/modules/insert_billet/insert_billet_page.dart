import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/input_text/input_text.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class InsertBilletPage extends StatelessWidget {
  const InsertBilletPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(color: AppColors.input,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 93,
              vertical: 24
            ),
            child: Text(
              "Preencha os dados do boleto",
              style: TextStyles.titleBoldHeading,
              textAlign: TextAlign.center,
            ),
          ),
          InputText(
            label: "Nome do boleto",
            icon: Icons.description_outlined,
            onChanged: (value) {},
          ),
          InputText(
            label: "Vemcimento",
            icon: FontAwesomeIcons.timesCircle,
            onChanged: (value) {},
          ),
          InputText(
            label: "Valor",
            icon: FontAwesomeIcons.wallet,
            onChanged: (value) {},
          ),
          InputText(
            label: "Código",
            icon: FontAwesomeIcons.barcode,
            onChanged: (value) {},
          ),
        ],
      ),
      bottomNavigationBar: SetLabelButtons(
        primaryLabel: "Cancelar",
        primaryOnPressed: (){},
        secondaryLabel: "Cadastrar",
        secondaryOnPressed: (){},
        enableSecondaryColor: true,
      ),
    );
  }
}