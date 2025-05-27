class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final String category;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.category,
  });

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      name: data['name'],
      price: (data['price'] as num).toDouble(),
      imageUrl: data['imageurl'],
      description: data['description'],
      category: data['category'],
    );
  }
}
