import 'package:cart_product_test/app/routes/app_routes.dart';
import 'package:cart_product_test/core/mixin/bottom_sheet_mixin.dart';
import 'package:cart_product_test/feature/product/provider/product_list_notifier.dart';
import 'package:cart_product_test/feature/product/widget/list_tile_custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView>
    with BottomSheetMixin {
  late ProductListNotifier productNotifier;
  final TextEditingController minPriceController = TextEditingController();
  final TextEditingController maxPriceController = TextEditingController();
  @override
  void initState() {
    super.initState();
    productNotifier = Get.find(tag: 'productListNotifier');
    productNotifier.getListProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Products',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            constraints: BoxConstraints(maxWidth: 28.r),
            padding: EdgeInsets.zero,
            onPressed: () => showFilterProductBottomSheet(
              context: context,
              maxPriceController: maxPriceController,
              minPriceController: minPriceController,
              applyFilter: () {
                var maxPrice = maxPriceController.text;
                var minPrice = minPriceController.text;

                if (minPrice.isEmpty) minPrice = '0.0';
                if (maxPrice.isEmpty) maxPrice = '1000000.0';

                Get.back();
                productNotifier.filter(
                  minPrice: double.parse(minPrice).toDouble(),
                  maxPrice: double.parse(maxPrice).toDouble(),
                );
              },
            ),
            icon: const Icon(Icons.filter_alt_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: IconButton(
              onPressed: () => Get.toNamed(AppRoutes.cart),
              icon: const Icon(Icons.shopping_cart_checkout_rounded),
            ),
          ),
        ],
      ),
      body: Obx(
        () {
          final state = productNotifier.state.value;
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            empty: () => const SizedBox(),
            success: (data) {
              final listProducts = (data.products ?? []);

              return ListView.separated(
                padding: EdgeInsets.only(
                  bottom: 16.h,
                  left: 16.w,
                  right: 16.w,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTileCustomProduct(
                  product: listProducts[index],
                  onTap: (product) => productNotifier.addCart(product: product),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 8.h),
                itemCount: listProducts.length,
              );
            },
            error: (failure) => Text(failure.message),
          );
        },
      ),
    );
  }
}
