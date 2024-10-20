import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:shopping_app/core/networking/api/product_services.dart';
import 'package:shopping_app/features/products/data/repositories/products_repo.dart';
import 'package:shopping_app/features/products/logic/cubit/products_cubit.dart';



final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  // Dio dio = DioFactory.getDio();
  //  getIt.registerLazySingleton<ProductServices>(() => ProductServices(dio));


  getIt.registerLazySingleton<ProductCubit>(() => ProductCubit(getIt()));
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerLazySingleton<ProductServices>(() => ProductServices(Dio()));
  // // login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}