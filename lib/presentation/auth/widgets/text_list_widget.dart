import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:flutter/material.dart';

class TextListWidget extends StatelessWidget {
  final String text;
  const TextListWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 6.0,
          ),
          height: 8,
          width: 8,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: ClinicTextStyle.smRegular.copyWith(
              color: AppColors.veryLightGray.withOpacity(0.8),
            ),
          ),
        ),
      ],
    );
  }
}
