import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class InputText extends StatelessWidget {

  final String label;

  final IconData icon;
  
  const InputText({
    required this.label,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          TextFormField(
            style: TextStyles.input,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              labelStyle: TextStyles.input,
              labelText: label,
              border: InputBorder.none,
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Icon(
                      icon,
                      color: AppColors.primary,
                    ),
                  ),
                  Container(
                    color: AppColors.stroke,
                    width: 1,
                    height: 48,
                  )
                ]
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.stroke,
          )
        ],
      ),
    );
  }
}