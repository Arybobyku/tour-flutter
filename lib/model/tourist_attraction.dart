import 'package:hive/hive.dart';

part 'tourist_attraction.g.dart';

@HiveType(typeId: 0)
class TouristAttraction extends HiveObject{

  @HiveField(0)
  String name;
  @HiveField(1)
  String image;
  @HiveField(2)
  String title;
  @HiveField(3)
  String? pdfPath;
  @HiveField(4)
  String? imageKomik;
  @HiveField(5)
  String description;

  TouristAttraction({
    required this.name,
    required this.description,
    required this.image,
    required this.title,
    this.pdfPath,
    this.imageKomik,
  });
}
