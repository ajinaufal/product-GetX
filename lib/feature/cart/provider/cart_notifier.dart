import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/domain/repositories/product_repositories.dart';
import 'package:cart_product_test/core/state/app_state.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:isar/isar.dart';

class CartNotifier extends GetxController {
  var state = const AppStates<List<CartDatabase>>.loading().obs;

  var total = 0.0.obs;

  void getCart({String? search}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    state.value = await response.fold(
      (failure) => AppStates<List<CartDatabase>>.error(failure),
      (products) async {
        final data = await products.where().findAll();
        return AppStates<List<CartDatabase>>.success(data);
      },
    );
    await calculation();
  }

  Future<void> addCart({required CartDatabase product}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    await response.fold((l) => null, (controller) async {
      final data = await controller.get(product.id);
      if (data != null) {
        final product = data.product;
        await Get.find<Isar>(tag: 'cartDatabase').writeTxn(() async {
          data.total = data.total + 1;
          if (product != null) {
            final stockProduct = product.stock;
            if (stockProduct != null) data.product?.stock = stockProduct - 1;
          }

          await controller.put(data);
        });
        state.value = AppStates<List<CartDatabase>>.success(
          await controller.where().findAll(),
        );
      }
    });
    await calculation();
  }

  Future<void> removeCart({required CartDatabase product}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    await response.fold((l) => null, (controller) async {
      final data = await controller.get(product.id);
      if (data != null) {
        final product = data.product;
        await Get.find<Isar>(tag: 'cartDatabase').writeTxn(() async {
          data.total = data.total - 1;
          if (product != null) {
            final stockProduct = product.stock;
            if (stockProduct != null) data.product?.stock = stockProduct + 1;
          }

          await controller.put(data);
        });
        state.value = AppStates<List<CartDatabase>>.success(
          await controller.where().findAll(),
        );
      }
    });
    await calculation();
  }

  Future<void> deleteCart({required CartDatabase product}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    await response.fold((l) => null, (controller) async {
      await Get.find<Isar>(tag: 'cartDatabase').writeTxn(() async {
        await controller.delete(product.id);
      });
      state.value = AppStates<List<CartDatabase>>.success(
        await controller.where().findAll(),
      );
    });
    await calculation();
  }

  Future<void> calculation() async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    await response.fold((l) => null, (controller) async {
      final data = await controller.where().findAll();
      total.value = data
          .map(
            (cart) => cart.total * (cart.product?.price ?? 0),
          )
          .toList()
          .sum
          .toDouble();
    });
  }
}
