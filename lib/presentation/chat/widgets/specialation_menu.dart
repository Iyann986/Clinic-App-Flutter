// ignore_for_file: deprecated_member_use

import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:flutter/material.dart';

class SpecialationMenu extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const SpecialationMenu({
    super.key,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 26,
        width: 72,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isActive
                ? AppColors.primary.withOpacity(0.2)
                : const Color(0xffEFF2F1)),
        child: Center(
          child: Text(
            label,
            style: ClinicTextStyle.smRegular.copyWith(
              fontSize: 10,
              color: isActive ? AppColors.primary : const Color(0xffA7A6A5),
            ),
          ),
        ),
      ),
    );
  }
}
