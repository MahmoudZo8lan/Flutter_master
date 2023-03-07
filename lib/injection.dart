import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:health_care/my_cubit.dart';
import 'package:health_care/my_repo.dart';
import 'package:health_care/web_services.dart';
final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerFactory<MyCubit>(()=>MyCubit(getIt()));
  getIt.registerFactory<MyRepo>(()=>MyRepo(getIt()));
  getIt.registerFactory<WebServices>(
          ()=>WebServices (createAndSetupDio()));
  }

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = (1 * 1000) as Duration?
    ..options.receiveTimeout = (10 * 1000) as Duration?;
  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    request: true,
    requestBody: true,


  ));
  return dio;
}

