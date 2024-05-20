class ListProduct {
  final String id;
  final String name;
  final DateTime scanDate;

  ListProduct({
    required this.id,
    required this.name,
    required this.scanDate,
  });

  ListProduct copyWith({
    String? id,
    String? name,
    DateTime? scanDate,
  }) {
    return ListProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      scanDate: scanDate ?? this.scanDate,
    );
  }
}