import 'package:flutter/material.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BilletTile extends StatelessWidget {

  final BilletModel data;

  const BilletTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        data.name!,
        style: TextStyles.titleListTile,
      ),
      subtitle: Text("Vence em ${data.dueDate}",),
      trailing: Text.rich(
        TextSpan(
          text: "R\$",
          style: TextStyles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(2)}",
              style: TextStyles.trailingBold,
            )
          ]
        ),
      ),
    );
  }
}