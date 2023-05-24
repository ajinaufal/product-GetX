import 'package:cart_product_test/feature/cart/view/cart_view.dart';
import 'package:cart_product_test/feature/product/view/product_list_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String home = '/';
  static const String cart = '/cart';

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const ProductListView()),
    GetPage(name: cart, page: () => const CartView()),
  ];
}
