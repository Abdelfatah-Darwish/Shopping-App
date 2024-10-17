import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_app/core/constant/strings.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

part 'product_services.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ProductServices {
  factory ProductServices(Dio dio, {String baseUrl}) = _ProductServices;

  @GET("/products")
  Future<List<Product>> getProducts();
}
