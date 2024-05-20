import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart';
import 'package:ethiscan/domain/entities/app/list_product.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'package:ethiscan/domain/entities/app/favorite_sort.dart';
import 'package:ethiscan/domain/entities/firestore/sort_criteria.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/buttons/icon_button.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_text_field.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/presentation/widget_core/product_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatefulWidget {
  final EthiscanUser user;
  const FavoritesPage(this.user, {super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPage();
}

class _FavoritesPage extends State<FavoritesPage> {
  late FavoritesBloc _favoritesBloc;
  late TextEditingController _searchController;
  FavoriteSort? _favoriteSort;

  @override
  void initState() {
    _favoritesBloc = getIt();
    _favoritesBloc.add(const FavoritesEvent.load());

    _searchController = TextEditingController();
    _searchController.addListener(_searchChanged);

    final favoriteSort = _favoriteSort;
    if (favoriteSort != null) {
      _searchController.text = favoriteSort.name!;
      _searchChanged();
    }
    super.initState();
  }

  void _searchChanged() {
    _favoritesBloc.add(
      FavoritesEvent.updateSort(
        (_favoritesBloc.state as FavoritesLoaded).favorites,
        _favoriteSort!.copyWith(name: _searchController.text),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _favoritesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: _favoritesBloc,
        child: BlocConsumer<FavoritesBloc, FavoritesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => _page(context, loading: true),
              error: () => _page(context, error: true),
              initial: () => _page(context),
              loaded: (List<ListProduct> favorites) =>
                  _page(context, favorites: favorites),
              orElse: () => _page(context),
            );
          },
        ));
  }

  Widget _page(
    BuildContext context, {
    bool loading = false,
    bool error = false,
    List<ListProduct> favorites = const [],
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(I18nUtils.translate(
            context,
            "favorites.title",
          )
        ),
        actions: [
          SecondaryIconButton(
            icon: _favoriteSort == null || _favoriteSort?.active == false
                ? Icons.search_outlined
                : Icons.close,
            size: 32,
            color: _favoriteSort == null || _favoriteSort?.active == false
                ? UIColors.lightPrimaryColor
                : UIColors.red,
            colorActive: _favoriteSort == null || _favoriteSort?.active == false
                ? UIColors.darkPrimaryColor
                : UIColors.darkRed,
            onTap: () {
              if (_favoriteSort == null) {
                setState(() {
                  _favoriteSort = FavoriteSort(active: true);
                });
              } else if (_favoriteSort != null) {
                setState(() {
                  _favoriteSort =
                      _favoriteSort?.copyWith(active: !_favoriteSort!.active);
                });
              }
            },
          ),
          const SizedBox(width: 8),
        ],
        titleTextStyle: const TextStyle(
          color: UIColors.lightPrimaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bottom: _favoriteSort?.active == true
            ? PreferredSize(
                preferredSize:
                    const Size.fromHeight(110), // Provide the preferred height
                child: Padding(
                  padding: const EdgeInsets.all(
                      0), // Add padding around the TextField
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: SecondaryIconButton(
                              icon: Icons.sort_by_alpha,
                              size: 32,
                              color: _favoriteSort?.sortCriteria.field ==
                                      SortField.name
                                  ? UIColors.lightAccentColor
                                  : UIColors.lightPrimaryColor,
                              colorActive: _favoriteSort?.sortCriteria.field ==
                                      SortField.name
                                  ? UIColors.darkAccentColor
                                  : UIColors.darkPrimaryColor,
                              onTap: () {
                                SortCriteria? sortCriteria = _favoriteSort
                                    ?.sortCriteria
                                    .copyWith(field: SortField.name);
                                setState(() {
                                  _favoriteSort = _favoriteSort?.copyWith(
                                      sortCriteria: sortCriteria);
                                });
                                _favoritesBloc.add(FavoritesEvent.updateSort(
                                    (_favoritesBloc.state as FavoritesLoaded).favorites,
                                    _favoriteSort!));
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SecondaryIconButton(
                              icon: Icons.schedule,
                              size: 32,
                              color: _favoriteSort?.sortCriteria.field ==
                                      SortField.scanDate
                                  ? UIColors.lightAccentColor
                                  : UIColors.lightPrimaryColor,
                              colorActive: _favoriteSort?.sortCriteria.field ==
                                      SortField.scanDate
                                  ? UIColors.darkAccentColor
                                  : UIColors.darkPrimaryColor,
                              onTap: () {
                                SortCriteria? sortCriteria = _favoriteSort
                                    ?.sortCriteria
                                    .copyWith(field: SortField.scanDate);
                                setState(() {
                                  _favoriteSort = _favoriteSort?.copyWith(
                                      sortCriteria: sortCriteria);
                                });
                                _favoritesBloc.add(FavoritesEvent.updateSort(
                                    (_favoritesBloc.state as FavoritesLoaded).favorites,
                                    _favoriteSort!));
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          Expanded(
                            child: CustomTextField(
                              label: null,
                              placeholder:
                                  I18nUtils.translate(context, "app.search"),
                              controller: _searchController,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SecondaryIconButton(
                            icon: Icons.swap_vert,
                            size: 32,
                            onTap: () {
                              SortOrder order =
                                  _favoriteSort?.sortCriteria.order ==
                                          SortOrder.ascending
                                      ? SortOrder.descending
                                      : SortOrder.ascending;
                              SortCriteria? sortCriteria = _favoriteSort
                                  ?.sortCriteria
                                  .copyWith(order: order);
                              setState(() {
                                _favoriteSort = _favoriteSort?.copyWith(
                                    sortCriteria: sortCriteria);
                              });
                              _favoritesBloc.add(FavoritesEvent.updateSort(
                                  (_favoritesBloc.state as FavoritesLoaded).favorites,
                                  _favoriteSort!));
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              )
            : null,
      ),
      body: ListViewLayoutBody(
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: _getFavoritesCards(favorites, loading, error),
          ),
        ),
      ],
    ),
    );
  }

  List<Widget> _getFavoritesCards(
      List<ListProduct> favorites, bool loading, bool error) {
    if (error) {
      return [
        CustomH3(I18nUtils.translate(context, "favorites.error.title")),
        CustomText(I18nUtils.translate(context, "favorites.error.message"))
      ];
    } else if (loading) {
      return [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: CustomCircularLoading(),
        ),
      ];
    } else if (favorites.isEmpty) {
      return [
        CustomH3(I18nUtils.translate(context, "favorites.empty.title")),
        CustomText(I18nUtils.translate(context, "favorites.empty.message"))
      ];
    } else {
      List<Widget> widgets = [];
      List<Widget> f = favorites
          .map((favorite) => ProductCard(favorite: favorite))
          .toList();
      for (int i = 0; i < f.length; i++) {
        widgets.add(const SizedBox(height: 15));
        widgets.add(f[i]);
      }
      return widgets;
    }
  }
}
