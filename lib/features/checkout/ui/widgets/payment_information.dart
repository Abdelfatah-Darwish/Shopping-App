import 'package:flutter/material.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/theming/colors.dart';
import 'package:shopping_app/core/theming/text_styles.dart';

class PaymentInformation extends StatefulWidget {
  const PaymentInformation({super.key});

  @override
  State<PaymentInformation> createState() => _PaymentInformationState();
}

class _PaymentInformationState extends State<PaymentInformation> {
  Version sqlDb = Version();
  double? totalPrice = 0.00;
  double discount = 50; // Discount amount

  Future<double> getTotalPrice() async {
    double total = await sqlDb.getTotalPrice('products');
    return total;
  }

  @override
  void initState() {
    super.initState();
    getTotalPrice().then((value) {
      setState(() => totalPrice = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    double discountedTotal = (totalPrice ?? 0.00) * (discount / 100);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: TextStyles.font16lightGreyRegular,
            ),
            Text(
              '  \$ ${totalPrice!.toStringAsFixed(2)} ',
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
              '  50 \%',
              style: TextStyles.font15pinkRegular,
            ),
          ],
        ),
        Divider(
          color: ColorsManager.darkGrey.withOpacity(0.1),
          thickness: 1.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TOTAL',
              style: TextStyles.font15BlackSemiBold(context),
            ),
            Text(
              '  \$ ${discountedTotal.toStringAsFixed(2)} ',
              style: TextStyles.font16BlackRegular(context),
            ),
          ],
        ),
      ],
    );
  }
}
