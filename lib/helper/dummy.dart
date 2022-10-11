import 'package:jezioto/model/Kabupaten.dart';
import 'package:jezioto/model/kecamatan.dart';
import 'package:jezioto/model/tourist_attraction.dart';

List<String> dummyAspect = [
  "Historis",
  "People",
  "Nature",
  "Architecture",
  "Social",
  "Cultural",
];

List<Kabupaten> listKabupaten = [
  Kabupaten(
      name: "Kabupaten Samosir",
      isAvailable: true,
      image: "images/kabupaten/samosir.png"),
  Kabupaten(name: "Kabupaten Dairi", image: "images/kabupaten/Dairi.png"),
  Kabupaten(
      name: "Kabupaten Humbang Hasundutan",
      image: "images/kabupaten/hasundutan.png"),
  Kabupaten(name: "Kabupaten Karo", image: "images/kabupaten/karo.jpg"),
  Kabupaten(
      name: "Kabupaten Pakpak Bharat",
      image: "images/kabupaten/pakpak_barat.jpg"),
  Kabupaten(
      name: "Kabupaten Simalungun", image: "images/kabupaten/simalungun.jpg"),
  Kabupaten(
      name: "Kabupaten Tapanuli Utara", image: "images/kabupaten/taput.png"),
  Kabupaten(
      name: "Kabupaten Toba Samosir",
      image: "images/kabupaten/toba_samosir.jpeg"),
];

List<Kecamatan> listKecamatan = [
  Kecamatan(
    name: "Pangururan",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/15/17/81/hotspring-pangururan.jpg?w=700&h=-1&s=1",
    touristAttractions: [
      TouristAttraction(
        name: "Terusan Tano Ponggol",
        description: "Terusan Tano Ponggol",
        image: "https://3.bp.blogspot.com/-OGHHDxII4oI/W_M1tMgwSSI/AAAAAAAAFV4/7G3amFIhoY8ZlJ2C4U8Mx-IR-VszLUBuQCLcBGAs/s1600/tano-ponggol-pangururan.JPG",
      ),
      TouristAttraction(
        name: "Pemandian Air Panas",
        description: "Pemandian Air Panas",
        image: "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/pemandian-hotspring-pangururan-samosir_20150724_153238.jpg",
      ),
      TouristAttraction(
        name: "Monumen Perjuangan Liberty Malau",
        description: "Monumen Perjuangan Liberty Malau",
        image: "https://www.indonesia-tourism.com/north-sumatra/toba/images/malau-liberty.jpg",
      ),
      TouristAttraction(
        name: "Komunitas Tenun Ulos Batak Huta Raja",
        description: "Komunitas Tenun Ulos Batak Huta Raja",
        image: "https://cloud.jpnn.com/photo/arsip/normal/2022/02/03/kampung-hutaraja-di-kecamatan-pangururan-kabupaten-samosir-z-0nra.jpg",
      ),
      TouristAttraction(
        name: "Pantai Indah Situngkir dan Pantai Pasir Putih Huta Bolon Parbaba",
        description: "Pantai Indah Situngkir dan Pantai Pasir Putih Huta Bolon Parbaba",
        image: "https://www.ninna.id/wp-content/uploads/2021/09/Pasir-Putih-Parbaba.jpeg",
      ),
      TouristAttraction(
        name: "Museum Gereja Katholik Inkulturatif",
        description: "Museum Gereja Katholik Inkulturatif",
        image: "https://medanbisnisdaily.com/imagesfile/201709/20170903_065711_wisata_arsitektural_gereja_katolik_inkulturasi_st_mikael_pangururan.jpeg",
      ),
      TouristAttraction(
        name: "Menara Doa Sinatapan",
        description: "Menara Doa Sinatapan",
        image: "https://waspada.co.id/wp-content/uploads/2016/12/menara-doa-sinatapan.jpg",
      ),
      TouristAttraction(
        name: "Kawasan Pohon Boru Naitang",
        description: "Kawasan Pohon Boru Naitang",
        image: "https://1.bp.blogspot.com/-vz8UWVqbciY/VGFABu798oI/AAAAAAAABXk/V6n5EWXtbKI/s1600/Boru%2BNaitang.JPG",
      ),
      TouristAttraction(
        name: "Bukit Sibea-bea",
        description: "Bukit Sibea-bea",
        image: "https://analisadaily.com/imagesfile/202112/20211226-160610_bukit-sibeabea-bukit-wisata-rohani-yang-sedang-viral.jpeg",
      ),
      TouristAttraction(
        name: "Bukit Holbung Samosir",
        description: "Bukit Holbung Samosir",
        image: "https://advontura.com/wp-content/uploads/2020/11/1-3-1.jpg",
      ),
    ],
  ),
];
