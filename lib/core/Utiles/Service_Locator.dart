import 'package:bookly_app/core/Utiles/Api_Service.dart';
import 'package:bookly_app/features/Home_View/Data/Repos/HomeRepoImpli.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<homeRepoImpl>(homeRepoImpl(getIt.get<ApiService>()));
}
