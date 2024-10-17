import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';

class CartItemsList extends StatefulWidget {
  const CartItemsList({super.key});

  @override
  State<CartItemsList> createState() => _CartItemsListState();
}

class _CartItemsListState extends State<CartItemsList> {
  // List of image URLs and prices
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
      "title": "Elegant wrapped dress"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: const EdgeInsets.only(left: 8),
            height: 108.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(0, 0, 0, 490),
                // Pink when selected, grey otherwise
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Image.asset(
                    items[index]["image"]!,
                    width: 77.w,
                    height: 87.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              items[index]["title"]!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.font16BlackRegular,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, right: 11.w),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'assets/images/icon_button_not_selected.png',
                                fit: BoxFit.fill,
                                width: 18.w,
                                height: 18.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //  verticalSpace(4),
                      Text(
                        items[index]["price"]!,
                        style: TextStyles.font16BlackSemiBold,
                      ),
                      // verticalSpace(6),
                      Row(
                        children: [
                          const CounterWidget(),
                          horizontalSpace(70),
                          TextButton(
                            child: Text(
                              'Edit',
                              style: TextStyles.font12PinkRegular.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: TextStyles.font12PinkRegular
                                    .color, // Use the same color as the text
                              ),
                            ),
                            onPressed: () {},
                          )
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

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        //  mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(Icons.remove),
            color: Colors.white,
            iconSize: 20,
            //  padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
            splashRadius: 20,
            highlightColor: Colors.pink[200],
            splashColor: Colors.pink[400],
            tooltip: 'Decrement',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          Text(
            '$_counter',
            style: TextStyles.font14WhiteSemiBold,
          ),
          IconButton(
            onPressed: _incrementCounter,
            icon: const Icon(Icons.add),
            color: Colors.white,
            iconSize: 20,
            // padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
            splashRadius: 20,
            highlightColor: Colors.pink[200],
            splashColor: Colors.pink[400],
            tooltip: 'Increment',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ],
      ),
    );
  }
}
