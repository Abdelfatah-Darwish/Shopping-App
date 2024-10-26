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

  getIt.registerFactory<ProductCubit>(() => ProductCubit(getIt()));
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerLazySingleton<ProductServices>(() => ProductServices(Dio()));
 
 
}
