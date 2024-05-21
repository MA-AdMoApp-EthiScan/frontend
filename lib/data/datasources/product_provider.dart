import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';

@Singleton(as: ProductRepository)
class ProductRepositoryProvider implements ProductRepository {
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');

  @override
  Future<Either<APIError, Product>> getProductById(String codebareId) async {
    final querySnapshot =
        await productCollection.where('id', isEqualTo: codebareId).get();
    if (querySnapshot.docs.isEmpty) {
      return Left(APIError('Product not found', 404));
    }
    final product = querySnapshot.docs
        .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
        .toList()
        .first;

    return Right(product);
  }

  @override
  Future<Either<APIError, List<Product>>> getProductByIdList(List<String> id) {
    final docList =
        id.map((productId) => productCollection.doc(productId).get());
    return Future.wait(docList).then((docs) {
      final products = docs
          .where((doc) => doc.exists)
          .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return Right(products);
    });
  }

  @override
  Future<Either<APIError, List<Product>>> getProductsByMetadataType(
      MetadataType metadataType) async {
    final querySnapshot = await productCollection
        .where('productMetadatas.type.name', isEqualTo: metadataType.name)
        .get();
    final products = querySnapshot.docs
        .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return Right(products);
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
