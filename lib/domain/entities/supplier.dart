import 'package:json_annotation/json_annotation.dart';
import 'product.dart';

part 'supplier.g.dart';

@JsonSerializable()
class Supplier {
  final String name;
  final List<Product> products;

  Supplier({required this.name, required this.products});

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
  Map<String, dynamic> toJson() => _$SupplierToJson(this);
}
