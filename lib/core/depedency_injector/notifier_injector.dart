import 'package:cart_product_test/feature/cart/provider/cart_notifier.dart';
import 'package:cart_product_test/feature/product/provider/product_list_notifier.dart';
import 'package:get/get.dart';

class NotifierInjection {
  static init() {
    Get.put(ProductListNotifier(), tag: 'productListNotifier');
    Get.put(CartNotifier(), tag: 'cartNotifier');
  }
}
