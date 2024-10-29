// import 'package:flutter/material.dart';
// import 'package:shopping_app/core/local_database/sql_db.dart';
// import 'package:shopping_app/core/theming/colors.dart';
// import 'package:shopping_app/core/theming/text_styles.dart';
// import 'package:shopping_app/core/widgets/spacing.dart';
// import 'package:shopping_app/features/products/data/model/model_from_extension/product_model/product.dart';
// import 'package:shopping_app/features/products/ui/widgets/show_image_product_in_card.dart';
// import 'package:shopping_app/features/wishlist/ui/widgets/product_image_in_card.dart';

// class ProductsCardWishlist extends StatefulWidget {
//   const ProductsCardWishlist({
//     super.key,
//   });

//   @override
//   State<ProductsCardWishlist> createState() => _ProductsCardWishlistState();
// }

// class _ProductsCardWishlistState extends State<ProductsCardWishlist> {
//   Version sqlDb = Version();
//   List<Map> products = [];

//   Future<void> fetchProducts() async {
//     List<Map> response = await sqlDb.read('products');
//     setState(() {
//       products = response;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchProducts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         final product = products[index];
//         return Card(
//           color: ColorsManager.white,
//           elevation: 3,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//             //  ProductImageInCard(product: product),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             product['title'] ?? '',
//                             style: TextStyles.font12lightGreyRegular,
//                           ),
//                         ],
//                       ),
//                     ),
//                     verticalSpace(4),
//                     Text(
//                       '\$${product['price']}',
//                       style: TextStyles.font13blackRegular,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
