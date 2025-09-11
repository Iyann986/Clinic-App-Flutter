class DoctorModel {
  final String? name;
  final String? image;
  final SpecialationModel? specialation;
  final ClinicModel? clinic;
  final String? startTime;
  final String? endTime;
  final int? chatFee;

  final String? certification;
  final int? telemedicineFee;

  DoctorModel({
    this.name,
    this.image,
    this.specialation,
    this.clinic,
    this.startTime,
    this.endTime,
    this.chatFee,
    this.certification,
    this.telemedicineFee,
  });
}

class SpecialationModel {
  final String? name;

  SpecialationModel({this.name});
}

class ClinicModel {
  final String? name;

  ClinicModel({this.name});
}

// Dummy doctor data
final List<DoctorModel> dummyDoctors = [
  DoctorModel(
    name: 'dr. Fitriani, Sp.A',
    image: 'assets/images/dokter1.png',
    specialation: SpecialationModel(name: 'Anak'),
    clinic: ClinicModel(name: 'Klinik Kasih Ibu'),
    startTime: '08:00:00',
    endTime: '09:00:00',
    chatFee: 150000,
    certification:
        'Sertifikasi Ultrasonografi Kandungan dan Kebidanan Asosiasi Ultrasonografi Indonesia Tahun: 2016',
    telemedicineFee: 1000,
  ),
  DoctorModel(
    name: 'dr. Mirza Aulia, Sp.A',
    image: 'assets/images/dokter1.png',
    specialation: SpecialationModel(name: 'Anak'),
    clinic: ClinicModel(name: 'Klinik Kasih Ibu'),
    startTime: '09:00:00',
    endTime: '10:00:00',
    chatFee: 150000,
    certification:
        'Sertifikasi Ultrasonografi Kandungan dan Kebidanan Asosiasi Ultrasonografi Indonesia Tahun: 2016',
    telemedicineFee: 1000,
  ),
  DoctorModel(
    name: 'dr. Budi Santoso, Sp.OG',
    image: 'assets/images/dokter2.png',
    specialation: SpecialationModel(name: 'Kandungan'),
    clinic: ClinicModel(name: 'RS Sehat Selalu'),
    startTime: '09:30:00',
    endTime: '10:30:00',
    chatFee: 200000,
    certification:
        'Sertifikasi Ultrasonografi Kandungan dan Kebidanan Asosiasi Ultrasonografi Indonesia Tahun: 2016',
    telemedicineFee: 1000,
  ),
  DoctorModel(
    name: 'dr. Ani Lestari, Sp.KJ',
    image: 'assets/images/dokter3.png',
    specialation: SpecialationModel(name: 'Psikiater'),
    clinic: ClinicModel(name: 'Klinik Harapan Bunda'),
    startTime: '10:00:00',
    endTime: '11:00:00',
    chatFee: 180000,
    certification:
        'Sertifikasi Ultrasonografi Kandungan dan Kebidanan Asosiasi Ultrasonografi Indonesia Tahun: 2016',
    telemedicineFee: 1000,
  ),
  DoctorModel(
    name: 'dr. Aminah Nur, Sp.KJ',
    image: 'assets/images/dokter3.png',
    specialation: SpecialationModel(name: 'Psikiater'),
    clinic: ClinicModel(name: 'Klinik Harapan Bunda'),
    startTime: '12:00:00',
    endTime: '13:00:00',
    chatFee: 180000,
    certification:
        'Sertifikasi Ultrasonografi Kandungan dan Kebidanan Asosiasi Ultrasonografi Indonesia Tahun: 2016',
    telemedicineFee: 1000,
  ),
];
