import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/presentation/auth/screen/terms_of_service_screen.dart';
import 'package:clinic_app_flutter/presentation/auth/widgets/text_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
          AppLabel.privacyPolicyAppBar,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLabel.privacyPolicyTitle,
                style: ClinicTextStyle.msMedium.copyWith(
                  color: AppColors.lightGray,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Kami di Ayo Sehat menghargai privasi Anda dan berkomitmen untuk melindungi data pribadi Anda. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi Anda saat Anda menggunakan aplikasi Ayo Sehat.",
                style: ClinicTextStyle.smRegular.copyWith(
                  color: AppColors.veryLightGray.withOpacity(0.8),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Nama, alamat email, nomor telepon, dan informasi lain yang Anda berikan saat mendaftar.',
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Catatan medis, keluhan kesehatan, riwayat pengobatan, dan data lainnya yang relevan dengan konsultasi kesehatan.',
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Alamat IP, perangkat yang digunakan, dan data log lainnya yang membantu kami memahami penggunaan aplikasi.',
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Kami dapat bekerja sama dengan pihak ketiga, seperti penyedia layanan teknologi atau mitra bisnis, yang membantu menyediakan layanan kami, namun hanya sejauh yang diperlukan.',
              ),
              const SizedBox(height: 16),
              Text(
                "Jika Anda memiliki pertanyaan mengenai Kebijakan Privasi ini atau ingin menggunakan hak-hak Anda terkait data pribadi, silakan hubungi kami di:",
                style: ClinicTextStyle.smRegular.copyWith(
                  color: AppColors.veryLightGray.withOpacity(0.8),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                AppLabel.emailHelp,
                style: ClinicTextStyle.smRegular.copyWith(
                  color: AppColors.veryLightGray.withOpacity(0.8),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 26),
              Button.filled(
                label: 'Setuju dan Lanjutkan',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsOfServiceScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
