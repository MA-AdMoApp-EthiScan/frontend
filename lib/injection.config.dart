// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ethiscan/app/favorites_bloc/favorites_bloc.dart' as _i21;
import 'package:ethiscan/app/parameters_bloc/parameters_bloc.dart' as _i23;
import 'package:ethiscan/app/product_bloc/product_bloc.dart' as _i25;
import 'package:ethiscan/app/scans_bloc/scans_bloc.dart' as _i24;
import 'package:ethiscan/app/user_bloc/main_user_bloc.dart' as _i22;
import 'package:ethiscan/data/datasources/auth_provider.dart' as _i8;
import 'package:ethiscan/data/datasources/certification_provider.dart' as _i10;
import 'package:ethiscan/data/datasources/favorite_product_provider.dart'
    as _i6;
import 'package:ethiscan/data/datasources/metadata_provider.dart' as _i18;
import 'package:ethiscan/data/datasources/metadata_type_provider.dart' as _i14;
import 'package:ethiscan/data/datasources/product_provider.dart' as _i16;
import 'package:ethiscan/data/datasources/scan_history_provider.dart' as _i20;
import 'package:ethiscan/data/datasources/user_provider.dart' as _i4;
import 'package:ethiscan/data/repositories/auth_repository.dart' as _i7;
import 'package:ethiscan/data/repositories/certification_repository.dart'
    as _i9;
import 'package:ethiscan/data/repositories/favorite_product_repository.dart'
    as _i5;
import 'package:ethiscan/data/repositories/language_repository.dart' as _i12;
import 'package:ethiscan/data/repositories/metadata_repository.dart' as _i17;
import 'package:ethiscan/data/repositories/metadata_type_repository.dart'
    as _i13;
import 'package:ethiscan/data/repositories/product_repository.dart' as _i15;
import 'package:ethiscan/data/repositories/scan_history_repository.dart'
    as _i19;
import 'package:ethiscan/data/repositories/user_repository.dart' as _i3;
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
    gh.singleton<_i3.UserRepository>(() => _i4.UserRepositoryProvider());
    gh.singleton<_i5.FavoriteProductRepository>(
        () => _i6.FavoriteProductRepositoryProvider());
    gh.singleton<_i7.AuthRepository>(() => _i8.AuthenticationProvider());
    gh.singleton<_i9.CertificationRepository>(
        () => _i10.CertificationRepositoryProvider());
    gh.lazySingleton<_i11.ILanguageRepository>(() => _i12.LanguageRepository());
    gh.singleton<_i13.MetadataTypeRepository>(
        () => _i14.MetadataTypeRepositoryProvider());
    gh.singleton<_i15.ProductRepository>(
        () => _i16.ProductRepositoryProvider());
    gh.singleton<_i17.MetadataRepository>(
        () => _i18.MetadataRepositoryProvider());
    gh.singleton<_i19.ScanHistoryRepository>(() => _i20.ScanHistoryProvider());
    gh.factory<_i21.FavoritesBloc>(() => _i21.FavoritesBloc(
          gh<_i5.FavoriteProductRepository>(),
          gh<_i15.ProductRepository>(),
        ));
    gh.factory<_i22.MainUserBloc>(
        () => _i22.MainUserBloc(gh<_i7.AuthRepository>()));
    gh.factory<_i23.ParametersBloc>(() => _i23.ParametersBloc(
          gh<_i13.MetadataTypeRepository>(),
          gh<_i3.UserRepository>(),
        ));
    gh.factory<_i24.ScansBloc>(() => _i24.ScansBloc(
          gh<_i19.ScanHistoryRepository>(),
          gh<_i15.ProductRepository>(),
        ));
    gh.factory<_i25.ProductBloc>(() => _i25.ProductBloc(
          gh<_i15.ProductRepository>(),
          gh<_i5.FavoriteProductRepository>(),
          gh<_i17.MetadataRepository>(),
          gh<_i13.MetadataTypeRepository>(),
          gh<_i3.UserRepository>(),
          gh<_i9.CertificationRepository>(),
        ));
    return this;
  }
}
