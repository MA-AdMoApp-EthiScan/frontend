import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
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
          var either = await _productRepository.getProductById(id);
          await either.when(
            left: (failure) async {
              Product p = Product(
                id: "1",
                name: "Product 1",
                description: "Description 1",
                scanDate: DateTime.now(),
                image: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
                carbonFootprint: 4,
              );
              emit(ProductState.loaded(product: p));
              //emit(ProductState.error(error: failure));
            },
            right: (product) async {
              emit(ProductState.loaded(product: product));
            },
          );
        },
      );
    });
  }
}