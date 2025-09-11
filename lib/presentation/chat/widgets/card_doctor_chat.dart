import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/extensions/string_ext.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/core/utils/convert.dart';
import 'package:clinic_app_flutter/data/models/dummy_models/chat/doctor_models.dart';
import 'package:clinic_app_flutter/presentation/chat/screen/detail_doctor_screen.dart';
import 'package:flutter/material.dart';

class CardDoctorChat extends StatelessWidget {
  final DoctorModel model;

  const CardDoctorChat({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailDoctorScreen(
              model: model,
              isTelemedis: false,
            ),
          ),
        );
        // context.push(
        //   DetailDoctorPage(
        //     doctor: model,
        //     isTelemedis: false,
        //   ),
        // );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 20,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: model.image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            '${model.image}',
                            width: 87.0,
                            height: 87.0,
                            fit: BoxFit.cover,
                          )
                          // Image.network(
                          //   model.image!.contains('https')
                          //       ? model.image!
                          //       : "${Variables.baseUrl}${model.image}",
                          //   width: 87.0,
                          //   height: 87.0,
                          //   fit: BoxFit.cover,
                          // ),
                          )
                      : Image.asset(
                          'assets/images/dokter1.png',
                          width: 87.0,
                          height: 87.0,
                          fit: BoxFit.cover,
                        ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name!,
                        style: ClinicTextStyle.smSemibold.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        model.specialation?.name ?? '-',
                        style: ClinicTextStyle.xsRegular.copyWith(
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      _itemRow(
                        ResourcePath.iconsHospitalPrimaryPng,
                        model.clinic?.name ?? '-',
                      ),
                      const SizedBox(height: 8.0),
                      _itemRow(
                        ResourcePath.iconsClockPrimaryPng,
                        Convert.formatTimeWithoutSeconds(
                            model.startTime?.toString() ?? '00:00:00'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harga Mulai",
                      style: ClinicTextStyle.xsMedium.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      model.chatFee?.toString().currencyFormatRpV2 ?? '-',
                      style: ClinicTextStyle.smSemibold.copyWith(
                        color: AppColors.greyLight,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: Button.filled(
                    borderRadius: 10,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailDoctorScreen(
                            model: model,
                            isTelemedis: false,
                          ),
                        ),
                      );
                    },
                    label: 'Mulai Chat',
                    fontSize: 12.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _itemRow(String icon, String value) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 18.0,
          height: 18.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Text(
          value,
          style: ClinicTextStyle.xsRegular.copyWith(
            color: AppColors.black,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
