import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/extensions/string_ext.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/data/models/dummy_models/chat/doctor_models.dart';
import 'package:clinic_app_flutter/presentation/chat/widgets/card_premium_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PremiumChatScreen extends StatelessWidget {
  final DoctorModel model;
  final bool isTelemedis;

  const PremiumChatScreen({
    super.key,
    required this.model,
    required this.isTelemedis,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF473DD5),
                Color(0xFF6199F6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        title: Text(
          "Premium ${isTelemedis ? 'Telemedis' : 'Chat'}",
          style: ClinicTextStyle.msMedium.copyWith(
            color: AppColors.white,
            fontSize: 19,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            ResourcePath.tombolBackSvg,
            height: 18,
            width: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       colors: [
            //         AppColors.secondary,
            //         Color(0xff1469F0),
            //       ],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.topCenter,
            //     ),
            //   ),
            //   child: Row(
            //     children: [
            //       IconButton(
            //         onPressed: () {
            //           // context.pop();
            //           Navigator.pop(context);
            //         },
            //         icon: const Icon(
            //           Icons.arrow_back_ios,
            //           color: AppColors.white,
            //         ),
            //       ),
            //       // SpaceWidth(context.deviceWidth * 0.2),
            //       Text(
            //         "Premium ${isTelemedis ? 'Telemedis' : 'Chat'}",
            //         style: TextStyle(
            //           fontSize: 18.0,
            //           fontWeight: FontWeight.w500,
            //           color: AppColors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CardPremiumChat(
                model: model,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 24,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.lightYellow,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: AppColors.yellow,
                        size: 20,
                      ),
                      // SpaceWidth(12),
                      SizedBox(width: 12),
                      Text(
                        "Ketentuan Penggunaan",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xff1E293B,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Fasilitas ini bisa memberi diagnosa awal dalam kondisi pengguna. Chat di aplikasi tidak menggantikan interaksi fisik Dokter. Dokter akan meresepkan obat sesuai aturan berdasarkan informasi dari pengguna.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB2B2B2),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => PremiumChatScreen(
                //       model: model,
                //       isTelemedis: false,
                //     ),
                //   ),
                // );
              },
              label: isTelemedis ? 'Call Sekarang' : 'Chat Sekarang',
              fontSize: 12.0,
            )
          ],
        ),
      ),
    );
  }
}
