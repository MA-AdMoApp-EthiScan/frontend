import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';

class ScansCard extends MyCard {
  final String? name;
  final String? date;
  final String? barcodeId;
  final bool error;

  const ScansCard({super.key, this.name, this.date, this.barcodeId, this.error = false})
      : super(
          showChildWhileLoading: true,
          disableNavigation: name == null || error,
        );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "app.data.error.title"));
    }

    return ListTile(
      title: Text(name!),
      subtitle: Text(date!),
    );
  }

  @override
  Widget? child(BuildContext context) {
    return null;
  }

  @override
  Widget page() => ProductPage(productId: barcodeId != null ? barcodeId! : "unknown id");
}