import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies({String environment = Env.Prod}) async =>
    getIt.init();

abstract class Env {
  static const String Dev = 'dev';
  static const String Prod = 'prod';
}
