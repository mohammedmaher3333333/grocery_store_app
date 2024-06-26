import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grocery_store_app/core/common/widgets/custom_product_item.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';
import 'package:grocery_store_app/features/customer/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:grocery_store_app/features/customer/favorites/presentation/refactors/complete_the_order_button.dart';

class FavorietsBody extends StatelessWidget {
  const FavorietsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          if (context.read<FavoritesCubit>().favoritesLis.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart_sharp,
                  // Icons.favorite_outline,
                  color: context.color.textColor,
                  size: 150,
                ),
                TextApp(
                  text: 'Choose Your Cart Products',
                  theme: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            );
          }
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: context.read<FavoritesCubit>().favoritesLis.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, //Number of cloums
                        crossAxisSpacing: 8, // Spacing between colums
                        mainAxisSpacing: 15, //Spacing between rows
                        childAspectRatio: 165 / 250,
                      ),
                      itemBuilder: (context, index) {
                        final list = context.read<FavoritesCubit>().favoritesLis;
                        return Column(
                          children: [
                            CustomProductItem(
                              price: double.parse(list[index].price),
                              categoryName: list[index].categoryName,
                              title: list[index].title,
                              imageUrl: list[index].image,
                              productId: int.parse(list[index].id),
                            ),
                          ],
                        );

                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(
                        msg: 'Complete the order',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black45,
                        textColor: Colors.white,
                      );
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Complete the order'),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
