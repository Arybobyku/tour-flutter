class TouristAttraction {
  String name;
  String image;
  String title;
  String? pdfPath;
  String description;

  TouristAttraction({
    required this.name,
    required this.description,
    required this.image,
    required this.title,
    this.pdfPath
  });
}
