import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProductRepository)
class ProductRepositoryProvider implements ProductRepository {
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');

  @override
  Future<List<Product>> getProduct() async {
    final snapshot = await productCollection.get();
    return snapshot.docs
        .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Either<APIError, Product>> getProductById(String id) async {
    final doc = await productCollection.doc(id).get();
    if (!doc.exists) {
      return Left(APIError('Product not found', 404));
    }
    return Right(Product.fromJson(doc.data() as Map<String, dynamic>));
  }

  @override
  Future<void> addProduct(Product product) {
    return productCollection.add(product.toJson());
  }

  @override
  Future<void> updateProduct(Product product) {
    return productCollection.doc(product.id).update(product.toJson());
  }

  @override
  Future<void> deleteProduct(Product product) {
    return productCollection.doc(product.id).delete();
  }
}
