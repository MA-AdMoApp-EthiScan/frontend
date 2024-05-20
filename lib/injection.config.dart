// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i19;
import 'package:ethiscan/app/parameters_bloc/parameters_bloc.dart' as _i3;
import 'package:ethiscan/app/product_bloc/product_bloc.dart' as _i17;
import 'package:ethiscan/app/scans_bloc/scans_bloc.dart' as _i4;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i18;
import 'package:ethiscan/data/datasources/auth_provider.dart' as _i10;
import 'package:ethiscan/data/datasources/favorite_product_provider.dart'
    as _i8;
import 'package:ethiscan/data/datasources/metadata_provider.dart' as _i16;
import 'package:ethiscan/data/datasources/product_provider.dart' as _i14;
import 'package:ethiscan/data/datasources/user_provider.dart' as _i6;
import 'package:ethiscan/data/repositories/auth_repository.dart' as _i9;
import 'package:ethiscan/data/repositories/favorite_product_repository.dart'
    as _i7;
import 'package:ethiscan/data/repositories/language_repository.dart' as _i12;
import 'package:ethiscan/data/repositories/metadata_repository.dart' as _i15;
import 'package:ethiscan/data/repositories/product_repository.dart' as _i13;
import 'package:ethiscan/data/repositories/user_repository.dart' as _i5;
import 'package:ethiscan/domain/language/i_language_repository.dart' as _i11;
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
    gh.factory<_i3.ParametersBloc>(() => _i3.ParametersBloc());
    gh.factory<_i4.ScansBloc>(() => _i4.ScansBloc());
    gh.singleton<_i5.UserRepository>(() => _i6.UserRepositoryProvider());
    gh.singleton<_i7.FavoriteProductRepository>(
        () => _i8.FavoriteProductRepositoryProvider());
    gh.singleton<_i9.AuthRepository>(() => _i10.AuthenticationProvider());
    gh.lazySingleton<_i11.ILanguageRepository>(() => _i12.LanguageRepository());
    gh.singleton<_i13.ProductRepository>(
        () => _i14.ProductRepositoryProvider());
    gh.singleton<_i15.MetadataRepository>(
        () => _i16.MetadataRepositoryProvider());
    gh.factory<_i17.ProductBloc>(
        () => _i17.ProductBloc(gh<_i13.ProductRepository>()));
    gh.factory<_i18.MainUserBloc>(
        () => _i18.MainUserBloc(gh<_i9.AuthRepository>()));
    gh.factory<_i19.FavoritesBloc>(() => _i19.FavoritesBloc(
          gh<_i5.UserRepository>(),
          gh<_i13.ProductRepository>(),
        ));
    return this;
  }
}
