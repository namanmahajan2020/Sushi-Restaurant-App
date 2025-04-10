class Food {
  String name;
  String price;
  String iamgePath;
  String rating;

  Food({
    required this.name,
    required this.price,
    required this.iamgePath,
    required this.rating,
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => iamgePath;
  String get _rating => rating;
}
