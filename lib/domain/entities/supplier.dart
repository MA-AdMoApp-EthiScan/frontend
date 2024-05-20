import 'package:ethiscan/domain/entities/sold_product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'supplier.g.dart';

@JsonSerializable()
class Supplier {
  final String name;
  final List<SoldProduct> products;

  Supplier({required this.name, required this.products});

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
  Map<String, dynamic> toJson() => _$SupplierToJson(this);
}
