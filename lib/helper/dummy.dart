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
    image:
        "https://3.bp.blogspot.com/-OGHHDxII4oI/W_M1tMgwSSI/AAAAAAAAFV4/7G3amFIhoY8ZlJ2C4U8Mx-IR-VszLUBuQCLcBGAs/s1600/tano-ponggol-pangururan.JPG",
  ),
  TouristAttraction(
    name: "Pemandian Air Panas",
    description: "Pemandian Air Panas",
    title: "The story of Pemandian Air Panas",
    image:
        "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/pemandian-hotspring-pangururan-samosir_20150724_153238.jpg",
  ),
  TouristAttraction(
    name: "Monumen Perjuangan Liberty Malau",
    description: "Monumen Perjuangan Liberty Malau",
    title: "The story of the Perjuangan Liberty Malau",
    image:
        "https://www.indonesia-tourism.com/north-sumatra/toba/images/malau-liberty.jpg",
  ),
  TouristAttraction(
    name: "Komunitas Tenun Ulos Batak Huta Raja",
    description: "Komunitas Tenun Ulos Batak Huta Raja",
    title: "The story of Tenun Ulos Batak",
    image:
        "https://cloud.jpnn.com/photo/arsip/normal/2022/02/03/kampung-hutaraja-di-kecamatan-pangururan-kabupaten-samosir-z-0nra.jpg",
  ),
  TouristAttraction(
    name: "Pantai Pasir Putih Huta Bolon Parbaba",
    title: "A Trip To White Sand Beach Parbaba",
    pdfPath: "assets/komiks/parbaban.pdf",
    description: "Pantai Pasir Putih Huta Bolon Parbaba",
    image:
        "https://www.ninna.id/wp-content/uploads/2021/09/Pasir-Putih-Parbaba.jpeg",
  ),
  TouristAttraction(
    name: "Museum Gereja Katholik Inkulturatif",
    title: "The story of Gereja Katholik",
    description: "Museum Gereja Katholik Inkulturatif",
    image:
        "https://medanbisnisdaily.com/imagesfile/201709/20170903_065711_wisata_arsitektural_gereja_katolik_inkulturasi_st_mikael_pangururan.jpeg",
  ),
  TouristAttraction(
    name: "Menara Doa Sinatapan",
    title: "The story of Menara Doa Sinatapan",
    description: "Menara Doa Sinatapan",
    image:
        "https://waspada.co.id/wp-content/uploads/2016/12/menara-doa-sinatapan.jpg",
  ),
  TouristAttraction(
    name: "Kawasan Pohon Boru Naitang",
    title: "The story of Pohon Boru Naitang",
    description: "Kawasan Pohon Boru Naitang",
    image:
        "https://1.bp.blogspot.com/-vz8UWVqbciY/VGFABu798oI/AAAAAAAABXk/V6n5EWXtbKI/s1600/Boru%2BNaitang.JPG",
  ),
  TouristAttraction(
    name: "Bukit Sibea-bea",
    title: "The story of Bukit Sibea-bea",
    description: "Bukit Sibea-bea",
    image:
        "https://analisadaily.com/imagesfile/202112/20211226-160610_bukit-sibeabea-bukit-wisata-rohani-yang-sedang-viral.jpeg",
  ),
  TouristAttraction(
    name: "Bukit Holbung Samosir",
    title: "The story of Holbung Samosir",
    description: "Bukit Holbung Samosir",
    image: "https://advontura.com/wp-content/uploads/2020/11/1-3-1.jpg",
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
