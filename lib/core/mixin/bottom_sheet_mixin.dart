import 'package:cart_product_test/feature/product/widget/filter_bottom_sheet.dart';
import 'package:flutter/material.dart';

mixin BottomSheetMixin {
  showFilterProductBottomSheet({
    required BuildContext context,
    required TextEditingController minPriceController,
    required TextEditingController maxPriceController,
    required void Function()? applyFilter,
  }) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => FilterBottomSheet(
        applyFilter: applyFilter,
        maxPriceController: maxPriceController,
        minPriceController: minPriceController,
      ),
    );
  }
}
