import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/data/models/database/product_isar.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseInjector {
  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final cartData = await Isar.open(
      [CartDatabaseSchema],
      directory: dir.path,
      name: 'cartDataBase1',
    );
    final productData = await Isar.open(
      [ProductDatabaseSchema],
      directory: dir.path,
      name: 'productDataBase1',
    );

    Get.put<Isar>(cartData, tag: 'cartDatabase');
    Get.put<Isar>(productData, tag: 'listProductDatabase');
  }
}
