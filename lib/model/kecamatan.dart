import 'tourist_attraction.dart';

class Kecamatan{
  String name;
  String image;
  String description;
  List<TouristAttraction> touristAttractions;

  Kecamatan({
    required this.name,
    required this.image,
    required this.description,
    required this.touristAttractions,
});

}