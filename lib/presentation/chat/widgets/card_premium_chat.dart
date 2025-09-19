import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/utils/convert.dart';
import 'package:clinic_app_flutter/data/models/dummy_models/chat/doctor_models.dart';
import 'package:flutter/material.dart';

class CardPremiumChat extends StatelessWidget {
  final DoctorModel model;

  const CardPremiumChat({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
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
                        ),
                        // Image.network(
                        //   doctor.image!.contains('https')
                        //       ? doctor.image!
                        //       : "${Variables.baseUrl}${doctor.image}",
                        //   width: 87,
                        //   height: 87,
                        //   fit: BoxFit.cover,
                        // ),
                      )
                    : Image.asset(
                        'assets/images/dokter1.png',
                        width: 87,
                        height: 87,
                        fit: BoxFit.cover,
                      ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name ?? "-",
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      model.specialation?.name ?? "-",
                      style: const TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _itemRow(
                      ResourcePath.iconsHospitalPrimaryPng,
                      model.clinic?.name ?? '-',
                      16.0,
                    ),
                    const SizedBox(height: 8),
                    _itemRow(
                      ResourcePath.iconsClockPrimaryPng,
                      model.startTime != null && model.endTime != null
                          ? "${Convert.formatToReadableTime2(model.startTime.toString())} - ${Convert.formatToReadableTime2(model.endTime.toString())} WIB"
                          : " -",
                      16.0,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          _itemRow(
            ResourcePath.icLikeShapesPng,
            'Akurasi penangan konsultasi',
            4.0,
          ),
          const SizedBox(height: 8),
          _itemRow(
            ResourcePath.icLikeShapesPng,
            'Privasi pertanyaan Pengguna',
            4.0,
          )
        ],
      ),
    );
  }

  Widget _itemRow(String icon, String value, double spaceWidth) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: spaceWidth == 4.0 ? 24.0 : 18.0,
          height: spaceWidth == 4.0 ? 24.0 : 18.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: spaceWidth,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: spaceWidth == 4.0 ? 12.0 : 10.0,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
