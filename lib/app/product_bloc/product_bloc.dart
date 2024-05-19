import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/api_error.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show injectable;

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;

  ProductBloc(
      this._productRepository
      ) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id) async {
          emit(const ProductState.loading());
          Either<APIError, Product> product = _productRepository.getProductById(id);
          if (product == null) {
            emit(const ProductState.error());
          }
          emit(const ProductState.loaded(product: product));
        },
      );
    });
  }
}