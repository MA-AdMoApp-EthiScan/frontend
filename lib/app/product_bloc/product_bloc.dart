import 'package:bloc/bloc.dart';
//import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show injectable;

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  //final MetadataRepository _metadataRepository;

  ProductBloc(this._productRepository /*, this._metadataRepository*/)
      : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id) async {
          emit(const ProductState.loading());
          try {
            final product = await _getProduct(id);
            //final metadatas = await _getMetadata(product.id);
            emit(ProductState.loaded(
                product: product /*, metadatas: metadatas*/));
          } catch (e) {
            emit(ProductState.error(error: e as APIError));
          }
        },
      );
    });
  }

  Future<Product> _getProduct(String id) async {
    final either = await _productRepository.getProductById(id);
    return either.fold(
      (failure) => throw failure,
      (product) => product,
    );
  }

  // Future<List<ProductMetadata>> _getMetadata(String productId) async {
  //   final either = await _metadataRepository.getMetadatasByProductId(productId);
  //   return either.fold(
  //     (failure) => throw failure,
  //     (metadata) => metadata,
  //   );
  // }
}
