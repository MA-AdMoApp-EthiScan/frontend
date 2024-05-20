import 'package:ethiscan/domain/entities/app/list_product.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/product/product_page.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/date_helpers.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends MyCard {
  final ListProduct favorite;
  final bool error;

  const FavoriteCard({super.key, required this.favorite, this.error = false})
      : super(
          showChildWhileLoading: true,
          disableNavigation: error,
        );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "app.data.error.title"));
    }

    return ListTile(
      trailing: const Icon(Icons.star, color: UIColors.lightAccentColor),
      title: CustomH2(favorite.name),
      subtitle: CustomText(I18nUtils.translate(context,
              "product.last_scan") +
          DateHelpers.formatDateToEuropeanStyle(favorite.scanDate)
          ),
    );
  }

  @override
  Widget? child(BuildContext context) {
    return null;
  }

  @override
  Widget page() => ProductPage(productId: favorite.id);
}
