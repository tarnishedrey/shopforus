class Item {
  String name;
  int price;
  String description;
  String imageUrl; // New field for the image URL

  Item(
      {required this.name,
      required this.price,
      required this.description,
      required this.imageUrl});
}
