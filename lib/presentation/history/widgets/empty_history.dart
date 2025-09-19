import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyHistory extends StatelessWidget {
  const EmptyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset(
        //   ResourcePath.emptyHistoryPng,
        //   width: 220.0,
        //   fit: BoxFit.cover,
        // ),
        SvgPicture.asset(
          ResourcePath.emptyHistorySvg,
          width: 220.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          AppLabel.emptyHistoryTitle,
          style: ClinicTextStyle.mdSemibold.copyWith(
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        Text(
          AppLabel.emptyHistoryDesc,
          textAlign: TextAlign.center,
          style: ClinicTextStyle.xsRegular.copyWith(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
