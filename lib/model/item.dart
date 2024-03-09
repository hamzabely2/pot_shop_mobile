class Item {
  final int id;
  final String name;
  final int price;
  final String description;
  final List<Map<String, dynamic>> images;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.images,
  });


  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      images: List<Map<String, dynamic>>.from(json['images']),
    );
  }
}