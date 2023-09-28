import 'package:flutter_bloc_get_clean/core/servise_locator/servise_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt=GetIt.instance;

@InjectableInit(
  initializerName:'init',
  preferRelativeImports: true,
  asExtension:true,
)
void configureDependencies() => getIt.init();