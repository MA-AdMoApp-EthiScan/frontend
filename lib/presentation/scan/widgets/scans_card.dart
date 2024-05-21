import 'package:ethiscan/domain/entities/app/scan_history.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScansCard extends MyCard {
  final ScanHistory? scanHistory;
  final bool error;

  const ScansCard({super.key, this.scanHistory, this.error = false})
      : super(
          showChildWhileLoading: true,
          disableNavigation: scanHistory == null || error,
        );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "app.data.error.title"));
    }
    final price = '${scanHistory!.price!} CHF';
    final name = scanHistory!.name!;
    
    final date = DateFormat('dd/MM/yy HH:mm').format(scanHistory!.date!);


    return ListTile(
      trailing: Text(price),
      title: Text(name),
      subtitle: Text(date),
    );
  }

  @override
  Widget? child(BuildContext context) {
    return null;
  }

  @override
  Widget page() => ProductPage(productId: scanHistory != null ? scanHistory!.barcodeId : "unknown id");
}