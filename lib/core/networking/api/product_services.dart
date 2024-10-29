import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_app/core/constant/strings.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';

part 'product_services.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ProductServices {
  factory ProductServices(Dio dio, {String baseUrl}) = _ProductServices;

  @GET("/products")
  Future<List<Product>> getProducts();

  @GET("/products/category/{category}")
  Future<List<Product>> getProductsByCategory(
      @Path("category") String category);
}
