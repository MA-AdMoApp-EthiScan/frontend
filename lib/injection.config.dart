// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:ethiscan/app/favorite_bloc/favorite_bloc.dart' as _i4;
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i3;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i12;
import 'package:ethiscan/data/datasources/auth_provider.dart' as _i9;
import 'package:ethiscan/data/datasources/metadata_provider.dart' as _i7;
import 'package:ethiscan/data/datasources/product_provider.dart' as _i5;
import 'package:ethiscan/data/datasources/user_provider.dart' as _i6;
import 'package:ethiscan/data/repositories/auth_repository.dart' as _i8;
import 'package:ethiscan/data/repositories/language_repository.dart' as _i11;
import 'package:ethiscan/domain/language/i_language_repository.dart' as _i10;
=======
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i15;
import 'package:ethiscan/app/product_bloc/product_bloc.dart' as _i13;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i14;
import 'package:ethiscan/data/datasources/auth_provider.dart' as _i6;
import 'package:ethiscan/data/datasources/metadata_provider.dart' as _i12;
import 'package:ethiscan/data/datasources/product_provider.dart' as _i10;
import 'package:ethiscan/data/datasources/user_provider.dart' as _i4;
import 'package:ethiscan/data/repositories/auth_repository.dart' as _i5;
import 'package:ethiscan/data/repositories/language_repository.dart' as _i8;
import 'package:ethiscan/data/repositories/metadata_repository.dart' as _i11;
import 'package:ethiscan/data/repositories/product_repository.dart' as _i9;
import 'package:ethiscan/data/repositories/user_repository.dart' as _i3;
import 'package:ethiscan/domain/language/i_language_repository.dart' as _i7;
>>>>>>> origin/front-product-view
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
<<<<<<< HEAD
    gh.factory<_i3.FavoritesBloc>(() => _i3.FavoritesBloc());
    gh.factory<_i4.FavoriteBloc>(() => _i4.FavoriteBloc());
    gh.singleton<_i5.ProductRepositoryProvider>(
        () => _i5.ProductRepositoryProvider());
    gh.singleton<_i6.UserRepositoryProvider>(
        () => _i6.UserRepositoryProvider());
    gh.singleton<_i7.MetadataRepositoryProvider>(
        () => _i7.MetadataRepositoryProvider());
    gh.singleton<_i8.AuthRepository>(() => _i9.AuthenticationProvider());
    gh.lazySingleton<_i10.ILanguageRepository>(() => _i11.LanguageRepository());
    gh.factory<_i12.MainUserBloc>(
        () => _i12.MainUserBloc(gh<_i8.AuthRepository>()));
=======
    gh.singleton<_i3.UserRepository>(() => _i4.UserRepositoryProvider());
    gh.singleton<_i5.AuthRepository>(() => _i6.AuthenticationProvider());
    gh.lazySingleton<_i7.ILanguageRepository>(() => _i8.LanguageRepository());
    gh.singleton<_i9.ProductRepository>(() => _i10.ProductRepositoryProvider());
    gh.singleton<_i11.MetadataRepository>(
        () => _i12.MetadataRepositoryProvider());
    gh.factory<_i13.ProductBloc>(
        () => _i13.ProductBloc(gh<_i9.ProductRepository>()));
    gh.factory<_i14.MainUserBloc>(() => _i14.MainUserBloc(
          gh<_i5.AuthRepository>(),
          gh<_i3.UserRepository>(),
        ));
    gh.factory<_i15.FavoritesBloc>(
        () => _i15.FavoritesBloc(gh<_i3.UserRepository>()));
>>>>>>> origin/front-product-view
    return this;
  }
}
