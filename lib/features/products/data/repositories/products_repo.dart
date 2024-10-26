import 'package:shopping_app/core/networking/api/product_services.dart';
import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';

class ProductsRepo {
  final ProductServices productServices;

  ProductsRepo(this.productServices);

  Future<List<Product>> getAllProducts() async {
    final response = await productServices.getProducts();

    return response
        .map((singleProductFromJson) =>
            Product.fromJson(singleProductFromJson.toJson()))
        .toList();

    // List<Product> allProductsList = [];
    // for (var singleProductfromJson in response) {
    //   Product product = Product.fromJson(singleProductfromJson.toJson());

    //   allProductsList.add(product);
    // }
    // //print(allProduct);
    // return allProductsList;
  }
}
