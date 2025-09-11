import 'package:clinic_app_flutter/core/assets/resource_path.dart';
import 'package:clinic_app_flutter/core/constants/color.dart';
import 'package:clinic_app_flutter/core/themes/styles/clinic_textstyle.dart';
import 'package:clinic_app_flutter/data/models/dummy_models/chat/doctor_models.dart';
import 'package:clinic_app_flutter/presentation/chat/widgets/card_doctor_chat.dart';
import 'package:clinic_app_flutter/presentation/chat/widgets/specialation_menu.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final searchController = TextEditingController();

  final List<String> doctorCategories = [
    'Semua',
    'Anak',
    'Kandungan',
    'Psikiater'
  ];

  int selectedCategoryIndex = 0;

  void onSpecialationTap(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  List<DoctorModel> get filteredDoctors {
    if (selectedCategoryIndex == 0) return dummyDoctors; // 'Semua'
    final selectedCategory = doctorCategories[selectedCategoryIndex];
    return dummyDoctors.where((doctor) {
      return doctor.specialation?.name
              ?.toLowerCase()
              .contains(selectedCategory.toLowerCase()) ??
          false;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF473DD5),
                        Color(0xFF6199F6),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            ResourcePath.logoHomePng,
                            width: 142,
                            height: 29,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            ResourcePath.fotoProfilePng,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 136),

                // Card list dokter dari dummyDoctors
                ListView.separated(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredDoctors.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10.0);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return CardDoctorChat(
                      model: filteredDoctors[index],
                    );
                  },
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 100.0,
                left: 20.0,
                right: 20.0,
              ),
              padding: const EdgeInsets.all(14.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
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
                        width: 55,
                        height: 60,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          ResourcePath.iconsLogoHandPng,
                          width: 38.0,
                          height: 34.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chat Dokter di Ayo Sehat',
                              style: ClinicTextStyle.smMedium.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                            Text(
                              'Layanan Live Chat yang siap siaga untuk bantu kamu hidup lebih sehat.',
                              style: ClinicTextStyle.xsRegular.copyWith(
                                color: AppColors.blue,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.veryWhite,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color(0xff8C8C8C),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: searchController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Cari dokter atau spesialis',
                              hintStyle: ClinicTextStyle.xsRegular.copyWith(
                                color: const Color(0xff8C8C8C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 28,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: doctorCategories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SpecialationMenu(
                            label: doctorCategories[index],
                            isActive: selectedCategoryIndex == index,
                            onPressed: () => onSpecialationTap(index),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
