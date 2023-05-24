import 'package:cart_product_test/core/helper/currency_helper.dart';
import 'package:cart_product_test/feature/cart/provider/cart_notifier.dart';
import 'package:cart_product_test/feature/cart/widget/list_tile_custom_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late CartNotifier cartNotifier;

  @override
  void initState() {
    super.initState();
    cartNotifier = Get.find(tag: 'cartNotifier');
    cartNotifier.getCart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Obx(
        () {
          final state = cartNotifier.state.value;

          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            empty: () => const SizedBox(),
            success: (data) => ListView.separated(
              padding: EdgeInsets.only(
                bottom: 16.h,
                left: 16.w,
                right: 16.w,
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTileCustomCart(
                cart: data[index],
                onTapAdd: (product) => cartNotifier.addCart(
                  product: product,
                ),
                onTapRemove: (product) => cartNotifier.removeCart(
                  product: product,
                ),
                onTapDelete: (product) => cartNotifier.deleteCart(
                  product: product,
                ),
              ),
              separatorBuilder: (context, index) => Container(),
              itemCount: data.length,
            ),
            error: (failure) => Text(failure.message),
          );
        },
      ),
      bottomNavigationBar: Obx(() {
        return Padding(
          padding: EdgeInsets.all(16.r),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Total : ${CurrencyHelper.convertToIdr(cartNotifier.total.value)}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 8.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
                  backgroundColor: Colors.blueAccent,
                  disabledBackgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                onPressed: null,
                child: Text(
                  'Checkout',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
