class Product {
  final String id;
  final String name;
  final String image;
  final String description;
  final double carbonFootprint;
  final DateTime scanDate;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.carbonFootprint,
    required this.scanDate,
  });

  Product copyWith({
    String? id,
    String? name,
    String? image,
    String? description,
    double? carbonFootprint,
    DateTime? scanDate,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      carbonFootprint: carbonFootprint ?? this.carbonFootprint,
      scanDate: scanDate ?? this.scanDate,
    );
  }
}