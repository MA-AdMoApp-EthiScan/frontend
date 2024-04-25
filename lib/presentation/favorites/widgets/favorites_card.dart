import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart';
import 'package:ethiscan/presentation/favorites/favorites.dart';
import 'package:ethiscan/presentation/widget_core/my_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ethiscan/presentation/core/buttons/icon_button.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';


class FavoriteCard extends MyCard {
  final String? favorite;
  final bool loading;
  final bool error;

  const FavoriteCard({this.favorite, this.error = false, this.loading = false})
      : super(
    loading: loading,
    swapNavigation: true,
    showChildWhileLoading: true,
    disableNavigation: favorite == null || error || loading,
  );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "home.data.error-title"));
    }

    return CustomH2(favorite != null
        ? favorite!
        : I18nUtils.translate(context, 'home.data.title-no-survey'));
  }

  @override
  Widget? child(BuildContext context) {
    if (error) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
              I18nUtils.translate(context, "home.data.error-text"),
            ),
          ),
          SecondaryIconButton(
            icon: Icons.refresh,
            onTap: () => BlocProvider.of<FavoritesBloc>(context)
                .add(const FavoritesEvent.load()),
          ),
        ],
      );
    }

    if (favorite == null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
              I18nUtils.translate(context, "home.data.text-no-form"),
            ),
          ),
          loading
              ? const CustomCircularLoading(size: 18, padding: EdgeInsets.all(3))
              : SecondaryIconButton(
            icon: Icons.refresh,
            size: 24,
            onTap: () => BlocProvider.of<FavoritesBloc>(context)
                .add(const FavoritesEvent.load()),
          ),
        ],
      );
    }
    return CustomText(
      I18nUtils.translate(context, 'home.data.survey-text'),
    );
  }

  @override
  Widget page() => FavoritesPage(); // TODO change to unique favorite page
}