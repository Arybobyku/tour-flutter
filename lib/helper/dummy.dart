import 'package:jezioto/helper/constants.dart';
import 'package:jezioto/model/Kabupaten.dart';
import 'package:jezioto/model/kecamatan.dart';
import 'package:jezioto/model/object_value.dart';
import 'package:jezioto/model/tourist_attraction.dart';

import '../model/kecamatan.dart';

List<String> dummyAspect = [
  "Historis",
  "People",
  "Nature",
  "Architecture",
  "Social",
  "Cultural",
];

List<ObjectValue> setValueAspect(String name) {
  return [
    ObjectValue(name: 'Historis', value: 'assets/aspect/$name/Historis.pdf'),
    ObjectValue(name: 'People', value: 'assets/aspect/$name/People.pdf'),
    ObjectValue(name: 'Nature', value: 'assets/aspect/$name/Nature.pdf'),
    ObjectValue(
        name: 'Architecture', value: 'assets/aspect/$name/Architecture.pdf'),
    ObjectValue(name: 'Social', value: 'assets/aspect/$name/Social.pdf'),
    ObjectValue(name: 'Cultural', value: 'assets/aspect/$name/Cultural.pdf'),
  ];
}

List<TouristAttraction> listTouristAttraction = [

  TouristAttraction(
    name: "Huta Bolon Parbaba White Sand Beach",
    title: "A Trip to the White Sand Beach Parbaba",
    pdfPath: "assets/komiks/parbaban.pdf",
    description: "Huta Bolon Parbaba White Sand Beach",
    image: Constants.baseAPIUrlImgDestinasi + "pantai_pasir_putih_parbaba.jpg",
    imageKomik: Constants.baseAPIUrlImg + "parbaban.png",
    aspects: setValueAspect('parbaban'),
  ),

  TouristAttraction(
    name: "Holbung Samosir Hill",
    title: "When We were Camping in Holbung Hill Samosir",
    description:  "Holbung Samosir Hill",
    image: Constants.baseAPIUrlImgDestinasi + "Bukit_Holbung.png",
    pdfPath: "assets/komiks/holbung.pdf",
    imageKomik: Constants.baseAPIUrlImg + "holbung.png",
    aspects: setValueAspect('holbung'),
  ),

  TouristAttraction(
      name: "Aek Rangkat Hot Springs",
      description: "Aek Rangkat Hot Springs",
      title: "In Hot Spring Aek Rangkat We have Fun",
      pdfPath: "assets/komiks/aek_rangkat.pdf",
      image: Constants.baseAPIUrlImgDestinasi + "aspek_sejarah_aek.jpg",
      imageKomik: Constants.baseAPIUrlImg + "aek_rangkat.png",
      aspects: setValueAspect('aek_rangkat')),


  TouristAttraction(
    name: "Ulos Batak Huta Raja Weaving Community",
    description: "Ulos Batak Huta Raja Weaving Community",
    title: "Don't be arrogant because you are in the Ulos Batak Huta Raja Weaving Community",
    image: Constants.baseAPIUrlImgDestinasi +
        "komunitas_tenun_ulos_batak_hutaraja.jpg",
    pdfPath: "assets/komiks/hutaraja.pdf",
    imageKomik: Constants.baseAPIUrlImg + "hutaraja.png",
    aspects: setValueAspect('hutaraja'),
  ),

  TouristAttraction(
    name: "Boru Naitang Tree Area",
    title: "Boru Naitang Tree as historical evidence of Violation of the Principle os Sibling Love",
    description:  "Boru Naitang Tree Area",
    image: Constants.baseAPIUrlImgDestinasi + "Pohon_Boru_Naitang.png",
    imageKomik: Constants.baseAPIUrlImg + "naitang.png",
    pdfPath: "assets/komiks/naitang.pdf",
    aspects: setValueAspect('naitang'),
  ),

  TouristAttraction(
      name: "Sinatapan Prayer Tower",
      title: "Come to Sinatapan Samosir Prayer Tower, and enjoy the Nature of Lake Toba as one of God's Miracle",
      description:  "Sinatapan Prayer Tower",
      image: Constants.baseAPIUrlImgDestinasi + "Menara_Doa_Sinatapan.png"),


  TouristAttraction(
      name: "Inculturative Catholic Chruch Museum",
      title: "We are happy doing normal things, we are also excited to go to the Inculturative Chruch Museum",
      description: "Inculturative Catholic Chruch Museum",
      image: Constants.baseAPIUrlImgDestinasi +
          "museum_gereja_katolik_inkulturatif.png"),

  TouristAttraction(
      name: "Tano Ponggol Canal",
      description: "Tano Ponggol Canal",
      title: "Our Impression of The Tano Ponggol Canal",
      image: Constants.baseAPIUrlImgDestinasi + "Terusan_Tano_Ponggol.jpg"),
  TouristAttraction(
      name: "Liberty Malau Struggle Monument",
      description: "Liberty Malau Struggle Monument",
      title: "Travel to the Liberty Malau Struggle Monument, It's so Glimpse what life is like somewhere else",
      image: Constants.baseAPIUrlImgDestinasi + "liberty_malau.jpg"),
  TouristAttraction(
      name: "Sibea-bea Hill",
      title: "On Sibea-bea Hill, there is a beginning and an end to all-natural sights",
      description: "Sibea-bea Hill",
      image: Constants.baseAPIUrlImgDestinasi + "bukit_sibea-bea.jpg"),
];

Kecamatan panguguran = Kecamatan(
  name: "Pangururan",
  image: "images/peta/pangururan.jpg",
  description:
      "Pangururan is a sub-district in Samosir Regency, North Sumatra province, Indonesia. Pangururan is also the Samosir district's capital, and the Pangururan sub-district's capital is in the Pasar Pangururan village. The Pangururan Subdistrict is located in the west of Samosir Regency, which is at a position between 2°32'- 2° 45' North Latitude and 98°42' - 98° 47 East Longitude. Pangururan District is one of 9 sub-districts in Samosir Regency, with 28 villages. Pangururan District is located at an altitude of 50.37 meters above sea level and has an area of 12,143 Ha.",
  touristAttractions: listTouristAttraction,
);

List<Kecamatan> listKecamatan = [
  panguguran,
];

List<Kabupaten> listKabupaten = [
  Kabupaten(
      name: "Samosir Regency",
      isAvailable: true,
      image: "images/kabupaten/samosir.png"),
  Kabupaten(
    name: "Dairi Regency",
    image: "images/kabupaten/Dairi.png",
  ),
  Kabupaten(
      name: "Humbang Hasundutan Regency",
      image: "images/kabupaten/hasundutan.png"),
  Kabupaten(
    name: "Karo Regency",
    image: "images/kabupaten/karo.jpg",
  ),
  Kabupaten(
      name: "Pakpak Bharat Regency",
      image: "images/kabupaten/pakpak_barat.jpg"),
  Kabupaten(
      name: "Simalungun Regency", image: "images/kabupaten/simalungun.jpg"),
  Kabupaten(
      name: "Tapanuli Utara Regency", image: "images/kabupaten/taput.png"),
  Kabupaten(
      name: "Toba Samosir Regency",
      image: "images/kabupaten/toba_samosir.jpeg"),
];
