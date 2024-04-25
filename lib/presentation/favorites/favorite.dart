import 'package:ethiscan/app/favorite_bloc/favorite_bloc.dart';
import 'package:ethiscan/injection.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';
import 'package:ethiscan/presentation/core/list_view_layout_body.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatefulWidget {
  final String? favoriteName;

  const FavoritePage({super.key, this.favoriteName});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<FavoritePage> createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoritePage> {
  late FavoriteBloc _favoriteBloc;

  @override
  void initState() {
    _favoriteBloc = getIt();
    _favoriteBloc.add(const FavoriteEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteBloc>(
      create: (context) => getIt(),
      child: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) => state.when(
          loading: () => _page(context, loading: true),
          error: () => _page(context, error: true),
          initial: () => _page(context),
          loaded: (favorite) => _page(context, favorite: favorite),
        ),
      ),
    );
  }

  Widget _page(
    BuildContext context, {
    bool loading = false,
    bool error = false,
    String favorite = "",
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColors.lightScaffoldBackgroundColor,
        title: Text(widget.favoriteName ??
            I18nUtils.translate(context, "favorite.title")),
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
              children: _getContent(loading, error, favorite),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getContent(bool loading, bool error, String favorite) {
    if (loading) {
      return [const CustomCircularLoading()];
    } else if (error) {
      return [
        CustomH3(I18nUtils.translate(context, "favorites.error.title")),
        CustomText(I18nUtils.translate(context, "favorites.error.message"))
      ];
    } else {
      return [CustomH3(favorite)];
    }
  }
}
