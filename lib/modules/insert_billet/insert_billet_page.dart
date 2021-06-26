import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow/modules/insert_billet/insert_billet_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/input_text/input_text.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class InsertBilletPage extends StatefulWidget {

  final String? barcode;

  const InsertBilletPage({
    this.barcode,
    Key? key,
  }) : super(key: key);

  @override
  _InsertBilletPageState createState() => _InsertBilletPageState();
}

class _InsertBilletPageState extends State<InsertBilletPage> {

  final controller = InsertBilletController();
  
  final moneyInputTextController =  MoneyMaskedTextController(
    leftSymbol: "R\$",
    decimalSeparator: ",",
  );

  final dueDateInputTextController = MaskedTextController(mask: "00/00/0000");

  final barcodeInputTextController = TextEditingController();

  @override
  void initState() {
    
    if (widget.barcode != null) {

      barcodeInputTextController.text = widget.barcode!;

    }

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(color: AppColors.input,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 24
                ),
                child: Text(
                  "Preencha os dados do boleto",
                  style: TextStyles.titleBoldHeading,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 24,),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    InputText(
                      label: "Nome do boleto",
                      icon: Icons.description_outlined,
                      validator: controller.validateName,
                      onChanged: (value) {
                        controller.onChange(name: value);
                      },
                    ),
                    InputText(
                      label: "Vemcimento",
                      controller: dueDateInputTextController,
                      icon: FontAwesomeIcons.timesCircle,
                      validator: controller.validateDueDate,
                      onChanged: (value) {
                        controller.onChange(dueDate: value);
                      },
                    ),
                    InputText(
                      label: "Valor",
                      controller: moneyInputTextController,
                      icon: FontAwesomeIcons.wallet,
                      validator: (_) => controller.validateValue(moneyInputTextController.numberValue),
                      onChanged: (value) {
                        controller.onChange(value: moneyInputTextController.numberValue);
                      },
                    ),
                    InputText(
                      label: "Código",
                      controller: barcodeInputTextController,
                      icon: FontAwesomeIcons.barcode,
                      validator: controller.validateBarcode,
                      onChanged: (value) {
                        controller.onChange(bardode: value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
        primaryLabel: "Cancelar",
        primaryOnPressed: (){
          Navigator.pop(context);
        },
        secondaryLabel: "Cadastrar",
        secondaryOnPressed: (){
          controller.registerBillet();
        },
        enableSecondaryColor: true,
      ),
    );
  }
}