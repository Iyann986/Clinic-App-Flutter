// ignore_for_file: deprecated_member_use

import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/presentation/auth/screen/register_user_data_screen.dart';
import 'package:clinic_app_flutter/presentation/auth/widgets/text_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

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
          AppLabel.termsOfServiceAppBar,
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
                AppLabel.termsOfServiceTitle,
                style: ClinicTextStyle.msMedium.copyWith(
                  color: AppColors.lightGray,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Selamat datang di aplikasi Ayo Sehat. Dengan menggunakan aplikasi ini, Anda menyetujui ketentuan layanan berikut ini. Harap baca ketentuan ini dengan cermat untuk memahami hak dan kewajiban Anda saat menggunakan layanan kami.",
                style: ClinicTextStyle.smRegular.copyWith(
                  color: AppColors.veryLightGray.withOpacity(0.8),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Dengan mengunduh, mendaftar, dan/atau menggunakan aplikasi Ayo Sehat, Anda menyatakan bahwa Anda setuju untuk mematuhi dan terikat oleh Ketentuan Layanan ini, serta kebijakan privasi kami.',
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Ayo Sehat menyediakan platform untuk konsultasi kesehatan online antara pengguna (Anda) dan profesional medis. Layanan ini tidak dimaksudkan sebagai pengganti saran medis profesional langsung. Anda sebaiknya selalu menghubungi profesional kesehatan untuk setiap kebutuhan medis mendesak.',
              ),
              const SizedBox(height: 16),
              const TextListWidget(
                text:
                    'Ayo Sehat bertujuan untuk menyediakan layanan terbaik namun tidak memberikan jaminan bahwa layanan ini bebas dari gangguan atau kesalahan.',
              ),
              const SizedBox(height: 16),
              Text(
                "Jika Anda memiliki pertanyaan mengenai Ketentuan Layanan ini, silakan hubungi kami di:",
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
                      builder: (context) => const RegisterUserDataScreen(),
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
