import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/cart/ui/widgets/counter_widget.dart';

class CartItemsList extends StatefulWidget {
  const CartItemsList({super.key});

  @override
  State<CartItemsList> createState() => _CartItemsListState();
}

class _CartItemsListState extends State<CartItemsList> {
  // List of image URLs, prices, and titles
  final List<Map<String, String>> items = [
    {
      "image": "assets/images/Order_Items.png",
      "price": "580 L.E",
      "title": "Elegant wrapped dress"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "600 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "750 L.E",
      "title": "Elegant wrapped dress"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
    {
      "image": "assets/images/Order_Items.png",
      "price": "800 L.E",
      "title": "Mint green Jacket"
    },
  ];

  Version sqlDb = Version();
  List<Map> products = [];

  Future<void> fetchNotes() async {
    // Fetch data from the database

    List<Map> response = await sqlDb.read('products');

    setState(() {
      products = response;
    });
  }

  // List to track whether each item is selected
  //late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    // Initialize the isSelected list with false for each item
    //isSelected = List<bool>.filled(products.length, false);
    fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: const EdgeInsets.only(left: 8),
            height: 108.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                // Change border color based on isSelected
                color:
                    // isSelected[index]
                    //      Colors.pink
                    //     :
                    const Color.fromRGBO(0, 0, 0, 490),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Image.network(
                    products[index]['image'],
                    //notes[index]['title']
                    width: 77.w,
                    height: 87.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              products[index]['title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.font16BlackRegular,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, right: 11.w),
                            child: InkWell(
                              onTap: () {
                                // setState(() {
                                //   // Toggle selection state
                                //   isSelected[index] = !isSelected[index];
                                // });
                              },
                              child: Image.asset(
                                // Change image based on isSelected
                                // isSelected[index]
                                //      'assets/images/icon_button_is_selected.png'
                                //     :
                                'assets/images/icon_button_not_selected.png',
                                fit: BoxFit.fill,
                                width: 18.w,
                                height: 18.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        products[index]["price"]!,
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      Row(
                        children: [
                          const CounterWidget(),
                          horizontalSpace(70),
                          TextButton(
                            child: Text(
                              'Edit',
                              style: TextStyles.font12PinkRegular.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    TextStyles.font12PinkRegular.color,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
