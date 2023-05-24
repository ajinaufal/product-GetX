import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:cart_product_test/core/domain/repositories/product_repositories.dart';
import 'package:cart_product_test/core/state/app_state.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

class ProductListNotifier extends GetxController {
  var state = const AppStates<ListProductEntities>.loading().obs;

  Future<void> getListProduct({String? search}) async {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = await repositories.getProduct();
    state.value = response.fold(
      (failure) => AppStates<ListProductEntities>.error(failure),
      (products) => AppStates<ListProductEntities>.success(products),
    );
  }

  void addCart({required ProductEntities product}) {
    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = repositories.getCartDatabase();
    response.fold((l) => null, (controller) async {
      final data = await controller.get(product.id);
      if (data != null) {
        await Get.find<Isar>(tag: 'cartDatabase').writeTxn(() async {
          data.total = data.total + 1;
          await controller.put(data);
        });
      } else {
        Get.find<Isar>(tag: 'cartDatabase').writeTxn(
          () async => await controller.put(
            product.toCartDatabase(),
          ),
        );
      }
    });
  }

  Future<void> filter({
    required double maxPrice,
    required double minPrice,
  }) async {
    state.value = const AppStates<ListProductEntities>.loading();

    final repositories =
        Get.find<ProductRepositories>(tag: 'productRepositories');
    final response = await repositories.getProduct();
    state.value = response.fold(
      (failure) => AppStates<ListProductEntities>.error(failure),
      (listProducts) {
        var products = listProducts.products ?? [];
        var newProduct = products.where((product) {
          final price = (product.price ?? 0).toDouble();
          return price >= minPrice && price <= maxPrice;
        }).toList();

        return AppStates<ListProductEntities>.success(
          ListProductEntities(
            products: newProduct,
            limit: listProducts.limit,
            total: listProducts.total,
            skip: listProducts.skip,
          ),
        );
      },
    );
  }
}
