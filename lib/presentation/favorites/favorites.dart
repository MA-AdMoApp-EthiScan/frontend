import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/presentation/favorites/widgets/favorites_card.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<FavoritesPage> createState() => _FavoritesPage();
}

class _FavoritesPage extends State<FavoritesPage> {
  late FavoritesBloc _favoritesBloc;

  @override
  void initState() {
    _favoritesBloc = getIt();
    _favoritesBloc.add(const FavoritesEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesBloc>(
      create: (context) => getIt(),
      child: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) => state.when(
          loading: () => _page(context, loading: true),
          error: () => _page(context, error: true),
          initial: () => _page(context),
          loaded: (List<String> favorites) =>
              _page(context, favorites: favorites),
        ),
      ),
    );
  }

  Widget _page(
    BuildContext context, {
    bool loading = false,
    bool error = false,
    List<String> favorites = const [],
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(I18nUtils.translate(
          context,
          "favorites.title",
        )),
        titleTextStyle: const TextStyle(
            color: UIColors.lightPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
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
      List<String> favorites, bool loading, bool error) {
    // loading = true;
    if (error) {
      return [
        CustomH3(I18nUtils.translate(context, "favorites.error-title")),
        CustomText(I18nUtils.translate(context, "favorites.error-message"))
      ];
    } else if (loading) {
      return [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: CustomCircularLoading(),
        ),
      ];
    } else {
      favorites = favorites.isEmpty ? ["test", "test 2"] : favorites;
      List<Widget> widgets = [];
      List<Widget> f = favorites
          .map((favorite) => FavoriteCard(favorite: favorite, date: "12 nov. 2023")) // todo : use values from backend
          .toList();
      for (int i = 0; i < f.length; i++) {
        widgets.add(const SizedBox(height: 15));
        widgets.add(f[i]);
      }
      return widgets;
    }
  }
}
