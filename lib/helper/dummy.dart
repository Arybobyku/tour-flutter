import 'package:jezioto/helper/constants.dart';
import 'package:jezioto/model/Kabupaten.dart';
import 'package:jezioto/model/kecamatan.dart';
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

List<TouristAttraction> listTouristAttraction = [
  TouristAttraction(
    name: "Terusan Tano Ponggol",
    description: "Terusan Tano Ponggol",
    title: "The story of Tano Ponggol",
    image:Constants.baseAPIUrlImgDestinasi+"Terusan_Tano_Ponggol.jpg"
  ),
  TouristAttraction(
    name: "Pemandian Air Panas",
    description: "Pemandian Air Panas",
    title: "The story of Pemandian Air Panas",
    image:Constants.baseAPIUrlImgDestinasi+"aspek_sejarah_aek.jpg"
  ),
  TouristAttraction(
    name: "Monumen Perjuangan Liberty Malau",
    description: "Monumen Perjuangan Liberty Malau",
    title: "The story of the Perjuangan Liberty Malau",
    image:Constants.baseAPIUrlImgDestinasi+"liberty_malau.jpg"
  ),
  TouristAttraction(
    name: "Komunitas Tenun Ulos Batak Huta Raja",
    description: "Komunitas Tenun Ulos Batak Huta Raja",
    title: "The story of Tenun Ulos Batak",
    image:Constants.baseAPIUrlImgDestinasi+"komunitas_tenun_ulos_batak_hutaraja.jpg"
  ),
  TouristAttraction(
    name: "Pantai Pasir Putih Huta Bolon Parbaba",
    title: "A Trip To White Sand Beach Parbaba",
    pdfPath: Constants.baseAPIUrlAssets+"parbaban.pdf",
    description: "Pantai Pasir Putih Huta Bolon Parbaba",
    image:Constants.baseAPIUrlImgDestinasi+"pantai_pasir_putih_parbaba.jpg",
    imageKomik: Constants.baseAPIUrlImg+"parbaban.png"
  ),
  TouristAttraction(
    name: "Museum Gereja Katholik Inkulturatif",
    title: "The story of Gereja Katholik",
    description: "Museum Gereja Katholik Inkulturatif",
    image:Constants.baseAPIUrlImgDestinasi+"museum_gereja_katolik_inkulturatif.png"
  ),
  TouristAttraction(
    name: "Menara Doa Sinatapan",
    title: "The story of Menara Doa Sinatapan",
    description: "Menara Doa Sinatapan",
    image:Constants.baseAPIUrlImgDestinasi+"Menara_Doa_Sinatapan.png"
  ),
  TouristAttraction(
    name: "Kawasan Pohon Boru Naitang",
    title: "The story of Pohon Boru Naitang",
    description: "Kawasan Pohon Boru Naitang",
    image:Constants.baseAPIUrlImgDestinasi+"Pohon_Boru_Naitang.png",
  ),
  TouristAttraction(
    name: "Bukit Sibea-bea",
    title: "The story of Bukit Sibea-bea",
    description: "Bukit Sibea-bea",
    image:Constants.baseAPIUrlImgDestinasi+"bukit_sibea-bea.jpg"
  ),
  TouristAttraction(
    name: "Bukit Holbung Samosir",
    title: "The story of Holbung Samosir",
    description: "Bukit Holbung Samosir",
    image:Constants.baseAPIUrlImgDestinasi+"Bukit_Holbung.png",
    pdfPath: Constants.baseAPIUrlAssets+"holbung.pdf",
    imageKomik: Constants.baseAPIUrlImg+"holbung.png"
  ),
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
