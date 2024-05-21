import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'scans_bloc.freezed.dart';
part 'scans_event.dart';
part 'scans_state.dart';

@injectable
class ScansBloc extends Bloc<ScansEvent, ScansState> {
  static const _scanHistoryKey = 'scan_history';
  final ProductRepository _productRepository;

  ScansBloc(this._productRepository)
      : super(const ScansState.initial()) {
    on<ScansEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ScansState.loading());
          SharedPreferences.getInstance()
            .then((prefs) {
              var l = prefs
                  .getStringList(_scanHistoryKey) ?? [];
              emit(ScansState.loaded(
                  scans: l
                      .map((item) => ScanHistory.fromMap(jsonDecode(item)))
                      .toList()));
            }
          );
        },
        barcodeFound: (barcode) async {
          var either = await _productRepository.getProductById(barcode);
          String productName = "";
          await either.fold(
            (failure) async {
              productName = barcode;
            },
            (product) async {
              productName = product.name;
            },
          );
          await SharedPreferences.getInstance()
              .then((prefs) async {
              var l = prefs
                  .getStringList(_scanHistoryKey) ?? [];
              l.add(
                jsonEncode(
                  ScanHistory(
                    barcodeId: barcode,
                    name: productName,
                    date: DateTime.now(),
                  ).toMap()
                )
              );
              await prefs.setStringList(_scanHistoryKey, l);
              emit(ScansState.barcodeFound(barcode: barcode));
            }
          );
        },
        invalidBarcode: (barcode) async {
          emit(const ScansState.error());
        },
        stop: () {
          emit(const ScansState.waiting());
        },
        clear: () async {
          emit(const ScansState.loading());
          SharedPreferences.getInstance()
              .then((prefs) {
                prefs.setStringList(_scanHistoryKey, []);
                emit(const ScansState.loaded(scans: []));
              }
          );
          emit(const ScansState.loaded(scans: []));
        },
      );
    });
  }
}
