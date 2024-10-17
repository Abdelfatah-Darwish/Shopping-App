import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/features/products/data/model/products_model.dart';

class DisplayImageOfProduct extends StatelessWidget {
  final Product product;
  const DisplayImageOfProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          product.image,
          width: 450.w,
          height: 450.h,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 30,
          left: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/next.png'),
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/share.png'),
            ),
          ),
        ),
      ],
    );
  }
}
