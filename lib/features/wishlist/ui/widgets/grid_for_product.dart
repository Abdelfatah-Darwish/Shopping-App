import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class GridForProduct extends StatefulWidget {
  const GridForProduct({
    super.key,
  });

  @override
  State<GridForProduct> createState() => _GridForProductState();
}

class _GridForProductState extends State<GridForProduct> {
  Version sqlDb = Version();
  List<Map> products = [];

  Future<void> fetchProducts() async {
    List<Map> response = await sqlDb.read('favorites');
    setState(() {
      products = response;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics:
              const NeverScrollableScrollPhysics(), // Disable internal scroll
          shrinkWrap: true, // Only take the necessary height
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to ProductDetailsScreen
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: ColorsManager.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.network(
                              products[index]["image"]!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 200.h,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () async {
                                  int productId = products[index]['id'];
                                  await sqlDb.delete(
                                      'favorites', 'id=$productId');
                                  fetchProducts();
                                },
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: ColorsManager.white,
                              child: IconButton(
                                onPressed: () async {
                                  // Add to cart logic here
                                },
                                icon: const Icon(Icons.add_shopping_cart),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    products[index]['title'],
                                    style: TextStyles.font12lightGreyRegular,
                                  ),
                                ],
                              ),
                            ),
                            verticalSpace(4),
                            Text(
                              '${products[index]['price']} L.E',
                              style: TextStyles.font13blackRegular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
