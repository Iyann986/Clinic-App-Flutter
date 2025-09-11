import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/components/button.dart';
import 'package:clinic_app_flutter/core/components/custom_text_field.dart';
import 'package:clinic_app_flutter/core/constants/app_label.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/presentation/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterUserDataScreen extends StatefulWidget {
  const RegisterUserDataScreen({super.key});

  @override
  State<RegisterUserDataScreen> createState() => _RegisterUserDataScreenState();
}

class _RegisterUserDataScreenState extends State<RegisterUserDataScreen> {
  String? _selectedGender;
  String? birthDate;
  TextEditingController? nameController;
  TextEditingController? dateController;
  TextEditingController? phoneController;
  TextEditingController? addressController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    dateController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
  }

  @override
  void dispose() {
    nameController?.dispose();
    dateController?.dispose();
    phoneController?.dispose();
    addressController?.dispose();
    super.dispose();
  }

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
          AppLabel.userDataAppBar,
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
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.blackDark,
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Sesuai KTP",
                  style: ClinicTextStyle.smRegular.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: nameController!,
                  label: 'Oarlene Richards',
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                Text(
                  "Tanggal Lahir",
                  style: ClinicTextStyle.smRegular.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: dateController!,
                  label: 'DD-MM-YYYY',
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  suffixIcon: GestureDetector(
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2000),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );

                      if (date != null) {
                        setState(() {
                          //datetime format
                          birthDate = "${date.day}-${date.month}-${date.year}";
                          birthDate = "${date.day}-${date.month}-${date.year}";
                          dateController!.text =
                              "${date.day}-${date.month}-${date.year}";
                        });
                      }
                    },
                    child: SvgPicture.asset(
                      ResourcePath.calenderIconSvg,
                      height: 10,
                      width: 10,
                      fit: BoxFit.scaleDown,
                      // ignore: deprecated_member_use
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Jenis Kelamin",
                  style: ClinicTextStyle.smRegular.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Pria',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          activeColor: AppColors.blue,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedGender = 'Pria';
                            });
                          },
                          child: Text(
                            'Pria',
                            style: ClinicTextStyle.smRegular.copyWith(
                              color: AppColors.lightGray,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 28),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Wanita',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          activeColor: AppColors.blue,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedGender = 'Wanita';
                            });
                          },
                          child: Text(
                            'Wanita',
                            style: ClinicTextStyle.smRegular.copyWith(
                              color: AppColors.lightGray,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  "No Handphone",
                  style: ClinicTextStyle.smRegular.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: phoneController!,
                  label: '8123xxxxxx',
                  keyboardType: TextInputType.number,
                  prefixIcon: Container(
                    width: 54,
                    height: 54,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '+62',
                          style: ClinicTextStyle.smRegular.copyWith(
                            color: AppColors.lightGray,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                Text(
                  "Alamat Domisili",
                  style: ClinicTextStyle.smMedium,
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: addressController!,
                  label: 'Jl. Pekayon Jaya No. 32',
                  maxLines: 3,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 48,
        margin: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Button.filled(
          height: 48,
          label: 'Simpan',
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const HomeScreen(),
            //   ),
            // );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(initialIndex: 0),
              ),
            );
          },
        ),
      ),
    );
  }
}
