import 'package:facialattendanceusa/services/authentication_service.dart';
import 'package:get_it/get_it.dart';
import 'package:facialattendanceusa/services/navigation_service.dart';
import 'package:facialattendanceusa/services/dialog_service.dart';
import 'package:facialattendanceusa/services/firestore_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => FirestoreService());  
}
