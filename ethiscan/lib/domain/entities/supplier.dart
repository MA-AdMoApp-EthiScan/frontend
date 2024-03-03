import 'package:ethiscan/domain/entities/product.dart';

class Supplier {
  final String name;
  final List<Product> products;

  Supplier({required this.name, required this.products});
}
