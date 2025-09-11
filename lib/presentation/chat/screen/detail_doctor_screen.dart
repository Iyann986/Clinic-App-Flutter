import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/extensions/string_ext.dart';
import 'package:clinic_app_flutter/data/models/dummy_models/chat/doctor_models.dart';
import 'package:clinic_app_flutter/presentation/chat/screen/premium_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailDoctorScreen extends StatelessWidget {
  final DoctorModel model;
  final bool isTelemedis;

  const DetailDoctorScreen({
    super.key,
    required this.model,
    required this.isTelemedis,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: AppColors.primary,
                child: model.image != null
                    ? Image.asset(
                        // '${model.image}',
                        'assets/images/detail_dokter1.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )
                    // Image.network(
                    //     doctor.image!.contains('https')
                    //         ? doctor.image!
                    //         : "${Variables.baseUrl}${doctor.image}",
                    //     width: context.deviceWidth,
                    //     fit: BoxFit.cover,
                    //   )
                    : Image.asset(
                        'assets/images/dokter1.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                ),
                padding: const EdgeInsets.all(24.0),
                // width: context.deviceWidth,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.lightBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(
                      8,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.name ?? "-",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              model.specialation?.name ?? "-",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffF2C94C),
                                  size: 24.0,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "4.6 review (100 ulasan)",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Image.asset(
                                  'assets/icons/person_history.png',
                                  width: 18,
                                  height: 18,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "8 tahun",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: SvgPicture.asset(
                            'assets/svg/chat_assets/chat.svg',
                            colorFilter: const ColorFilter.mode(
                              AppColors.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Penghargaan dan Sertifikasi",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    item(
                      model.certification ?? "-",
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Tempat Praktik",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      model.clinic?.name ?? "-",
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              //button back
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        height: 77,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Biaya Konsultasi",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  isTelemedis
                      ? model.telemedicineFee!.toString().currencyFormatRpV2
                      : model.chatFee!.toString().currencyFormatRpV2,
                  style: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Color(
                      0xff677294,
                    ),
                  ),
                ),
              ],
            ),
            Button.filled(
              width: 120,
              height: 40,
              borderRadius: 10,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PremiumChatScreen(
                      model: model,
                      isTelemedis: false,
                    ),
                  ),
                );
              },
              label: isTelemedis ? 'Call Sekarang' : 'Chat Sekarang',
              fontSize: 12.0,
            )
          ],
        ),
      ),
    );
  }

  Widget item(
    String certification,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: CircleAvatar(
            radius: 4.0,
            backgroundColor: AppColors.grey.withOpacity(0.4),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            // "$certification \n$place \nTahun: $year",
            certification,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
