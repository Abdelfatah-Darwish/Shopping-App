import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/local_database/sql_db.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/core/widgets/spacing.dart';
import 'package:shopping_app/features/cart/logic/selection_cubit/cart_cubit.dart';
import 'package:shopping_app/features/cart/ui/widgets/counter_widget.dart';

class CartItemsList extends StatefulWidget {
  const CartItemsList({super.key});

  @override
  State<CartItemsList> createState() => _CartItemsListState();
}

class _CartItemsListState extends State<CartItemsList> {
  Version sqlDb = Version();
  List<Map> products = [];

  Future<void> fetchNotes() async {
    List<Map> response = await sqlDb.read('products');

    setState(() {
      products = response;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartCubit(),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: BlocBuilder<CartCubit, Map<int, bool>>(
              builder: (context, selectedItems) {
                bool isSelected = selectedItems[index] ?? false;

                return GestureDetector(
                  onTap: () {
                    context.read<CartCubit>().toggleSelection(index);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 108.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected
                            ? Colors.pink
                            : const Color.fromRGBO(0, 0, 0, 490),
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
                                    padding: EdgeInsets.only(
                                        left: 16.w, right: 11.w),
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .read<CartCubit>()
                                            .toggleSelection(index);
                                      },
                                      child: Image.asset(
                                        isSelected
                                            ? 'assets/images/icon_button_is_selected.png'
                                            : 'assets/images/icon_button_not_selected.png',
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
                                      'Remove',
                                      style:
                                          TextStyles.font12PinkRegular.copyWith(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            TextStyles.font12PinkRegular.color,
                                      ),
                                    ),
                                    onPressed: () async {
                                      int productId = products[index]['id'];
                                      await sqlDb.delete(
                                          'products', 'id=$productId');
                                      fetchNotes();
                                    },
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
            ),
          );
        },
      ),
    );
  }
}
