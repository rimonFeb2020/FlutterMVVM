import 'package:get_it/get_it.dart';
import 'package:learing_mvvm/core/services/api.dart';
import 'package:learing_mvvm/core/services/authentication_service.dart';
import 'package:learing_mvvm/core/viemodel/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton(()=> AuthenticationService());
  locator.registerLazySingleton(()=> Api());
  locator.registerLazySingleton(()=> LoginModel());
}
