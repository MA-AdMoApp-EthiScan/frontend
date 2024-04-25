import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/favorites/favorite.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends MyCard {
  final String? favorite;
  final String? date;
  final bool error;

  const FavoriteCard({super.key, this.favorite, this.date, this.error = false})
      : super(
          showChildWhileLoading: true,
          disableNavigation: favorite == null || error,
        );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "app.data.error.title"));
    }

    return ListTile(
      trailing: const Icon(Icons.star, color: UIColors.lightAccentColor),
      title: CustomH2(favorite!),
      subtitle: CustomText(I18nUtils.translate(context, "favorite.last_scan") + (date ?? "")),
    );
  }

  @override
  Widget? child(BuildContext context) {
    return null;
  }

  @override
  Widget page() => FavoritePage(
      favoriteName: favorite);
}
