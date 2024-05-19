// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ethiscan/app/favorite_bloc/favorite_bloc.dart' as _i4;
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i3;
import 'package:ethiscan/app/scans_bloc/scans_bloc.dart' as _i5;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i10;
import 'package:ethiscan/data/language/language_repository.dart' as _i7;
import 'package:ethiscan/domain/language/i_language_repository.dart' as _i6;
import 'package:ethiscan/domain/providers/auth_provider.dart' as _i9;
import 'package:ethiscan/domain/repositories/auth_repository.dart' as _i8;
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
    gh.factory<_i3.FavoritesBloc>(() => _i3.FavoritesBloc());
    gh.factory<_i4.FavoriteBloc>(() => _i4.FavoriteBloc());
    gh.factory<_i5.ScansBloc>(() => _i5.ScansBloc());
    gh.lazySingleton<_i6.ILanguageRepository>(() => _i7.LanguageRepository());
    gh.singleton<_i8.AuthRepository>(() => _i9.AuthenticationProvider());
    gh.factory<_i10.MainUserBloc>(
        () => _i10.MainUserBloc(gh<_i8.AuthRepository>()));
    return this;
  }
}
