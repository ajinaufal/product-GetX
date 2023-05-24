import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/data/models/database/product_isar.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

abstract class ProductLocalDataSource {
  IsarCollection<ProductDatabase> getListProductDatabase();
  IsarCollection<CartDatabase> getCartDatabase();
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  @override
  IsarCollection<CartDatabase> getCartDatabase() {
    final isar = Get.find<Isar>(tag: 'cartDatabase');
    return isar.cartDatabases;
  }

  @override
  IsarCollection<ProductDatabase> getListProductDatabase() {
    final isar = Get.find<Isar>(tag: 'listProductDatabase');
    return isar.productDatabases;
  }
}
