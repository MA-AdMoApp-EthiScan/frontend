// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ethiscan/app/favorite_bloc/favorite_bloc.dart' as _i5;
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i4;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i3;
import 'package:ethiscan/data/language/language_repository.dart' as _i7;
import 'package:ethiscan/domain/language/i_language_repository.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.MainUserBloc>(() => _i3.MainUserBloc());
    gh.factory<_i4.FavoritesBloc>(() => _i4.FavoritesBloc());
    gh.factory<_i5.FavoriteBloc>(() => _i5.FavoriteBloc());
    gh.lazySingleton<_i6.ILanguageRepository>(() => _i7.LanguageRepository());
    return this;
  }
}
