import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class ScansCard extends MyCard {
  final String? scan;
  final String? date;
  final bool error;

  const ScansCard({super.key, this.scan, this.date, this.error = false})
      : super(
          showChildWhileLoading: true,
          disableNavigation: scan == null || error,
        );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "app.data.error.title"));
    }

    return ListTile(
      trailing: const Icon(Icons.star, color: UIColors.lightAccentColor),
      title: CustomH2(scan!),
      subtitle: CustomText(I18nUtils.translate(context, "scan.last_scan") + (date ?? "")),
    );
  }

  @override
  Widget? child(BuildContext context) {
    return null;
  }

  @override
  Widget page() => ProductPage(productId: scan != null ? scan! : "unknown id");
}