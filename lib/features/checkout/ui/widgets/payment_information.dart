import 'package:flutter/material.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class PaymentInformation extends StatefulWidget {
  final List<Map> products;
  const PaymentInformation({super.key, required this.products});

  @override
  State<PaymentInformation> createState() => _PaymentInformationState();
}

class _PaymentInformationState extends State<PaymentInformation> {
  Version sqlDb = Version();

  //double? totalPrice;

  Future<double> getTotalPrice() async {
    double totalPrice = await sqlDb.getTotalPrice('products');
    return totalPrice;
  }

  double? totalPrice = 0.00;

  @override
  void initState() {
    super.initState();
    getTotalPrice().then((value) => setState(() => totalPrice = value));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Suptotal',
              style: TextStyles.font16lightGreyRegular,
            ),
            Text(
              totalPrice!.toStringAsFixed(2),
              style: TextStyles.font15grayRegular,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discount',
              style: TextStyles.font16lightGreyRegular,
            ),
            Text(
              '- 200 L.E',
              style: TextStyles.font15pinkRegular,
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       'Delivery fee',
        //       style: TextStyles.font16lightGreyRegular,
        //     ),
        //     Text(
        //       '40 L.E',
        //       style: TextStyles.font15grayRegular,
        //     ),
        //   ],
        // ),
        Divider(
          color: ColorsManager.darkGrey
              .withOpacity(0.1), // Set the color of the line
          thickness: 1.0, // Set the thickness of the line
          indent: 0, // Optional: Indent from the left
          endIndent: 0, // Optional: Indent from the right
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TOTAL',
              style: TextStyles.font15BlackSemiBold,
            ),
            Text(
              '1,050 L.E',
              style: TextStyles.font16BlackRegular,
            ),
          ],
        ),
      ],
    );
  }
}
