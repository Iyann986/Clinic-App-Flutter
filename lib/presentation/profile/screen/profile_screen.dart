import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          AppLabel.profileAppBar,
          style: ClinicTextStyle.msMedium.copyWith(
            color: AppColors.white,
            fontSize: 19,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      ResourcePath.fotoProfilePng,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: ClinicTextStyle.msMedium.copyWith(
                          fontSize: 20,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "loremipsum@gmail.com",
                        style: ClinicTextStyle.xsRegular.copyWith(
                          fontSize: 14,
                          color: AppColors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 1,
                color: const Color(0xff677294).withOpacity(0.16),
              ),
            ),
            const SizedBox(height: 16),
            _menuItem(
              ResourcePath.icDocumentSvg,
              'Kebijakan Layanan',
            ),
            const SizedBox(height: 16),
            _menuItem(
              ResourcePath.icHelpSvg,
              'Bantuan',
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {},
              child: _menuItem(
                ResourcePath.icLogoutSvg,
                'Keluar',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(final String image, final String title) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(
              0xff677294,
            ).withOpacity(0.16),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color(
                0xffF5F5F5,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                image,
                width: 24.0,
                height: 24.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Color(
                0xff000000,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 24,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
