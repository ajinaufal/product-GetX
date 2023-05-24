import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/data/models/database/product_isar.dart';
import 'package:cart_product_test/core/data/models/failures/failure.dart';
import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:dartz/dartz.dart';
import 'package:isar/isar.dart';

abstract class ProductRepositories {
  Future<Either<Failure, ListProductEntities>> getProduct();
  Either<Failure, IsarCollection<CartDatabase>> getCartDatabase();
  Either<Failure, IsarCollection<ProductDatabase>> getListProductDatabase();
}
