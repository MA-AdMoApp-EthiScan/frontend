import 'package:ethiscan/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProduct();
  Future<Product> getProductById(String id);
  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(Product product);
}
