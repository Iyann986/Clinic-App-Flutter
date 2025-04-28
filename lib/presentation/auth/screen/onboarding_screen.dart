import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/presentation/auth/screen/privacy_policy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 44),
                  SvgPicture.asset(
                    ResourcePath.logoSvg,
                    height: 75,
                    width: 66,
                  ),
                  // Image.asset(
                  //   ResourcePath.logoPng,
                  //   height: 75,
                  //   width: 66,
                  // ),
                  const SizedBox(height: 24),
                  Image.asset(
                    ResourcePath.onboardingDoctorPng,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(
                      16,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      AppLabel.welcomeText,
                      style: ClinicTextStyle.msMedium,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      textAlign: TextAlign.center,
                      AppLabel.descOnboarding,
                      style: ClinicTextStyle.smRegular.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 36),
                    ElevatedButton(
                      onPressed: () {
                        // context.pushNamed('/login');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PrivacyPolicyScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                            color: AppColors.primary,
                            width: 1.0,
                          ),
                        ),
                        shadowColor: Colors.transparent,
                        surfaceTintColor: AppColors.white,
                        backgroundColor: AppColors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(ResourcePath.googleIconSvg),
                          const SizedBox(width: 12),
                          Text(
                            AppLabel.signInWithGoogle,
                            style: ClinicTextStyle.msMedium.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SpaceHeight(26),
                    // Button.filled(
                    //     onPressed: () {
                    //       context.push(const DoctorHomePage());
                    //     },
                    //     label: 'Doctor Page'),
                    // const SpaceHeight(26),
                    // Button.filled(
                    //     onPressed: () {
                    //       context.push(const AdminMainPage());
                    //     },
                    //     label: 'Admin Page'),
                    const SizedBox(height: 26),
                    Text(
                      "Powerred by",
                      style: ClinicTextStyle.xsMedium.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 6),
                    SvgPicture.asset(
                      ResourcePath.logoSvg,
                      // ignore: deprecated_member_use
                      color: AppColors.primary,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
