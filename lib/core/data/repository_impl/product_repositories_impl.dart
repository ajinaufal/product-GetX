import 'dart:io';
import 'package:cart_product_test/core/data/datasource/local/product_remote_local_data_source.dart';
import 'package:cart_product_test/core/data/datasource/remote/product_remote_data_source.dart';
import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/data/models/database/product_isar.dart';
import 'package:cart_product_test/core/data/models/failures/failure.dart';
import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:cart_product_test/core/domain/repositories/product_repositories.dart';
import 'package:cart_product_test/core/helper/network_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

class ProductRepositoriesImpl extends GetxController
    implements ProductRepositories {
  ProductRepositoriesImpl({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final NetworkInfo networkInfo;
  final ProductRemoteDataSource remoteDataSource;
  final ProductLocalDataSource localDataSource;

  @override
  Future<Either<Failure, ListProductEntities>> getProduct() async {
    if (await networkInfo.isConnected) {
      try {
        final resp = await remoteDataSource.getProduct();
        return Right(resp);
      } on SocketException {
        return const Left(SocketFailure());
      } catch (_) {
        return const Left(ServerFailure());
      }
    }
    return const Left(NetworkFailure());
  }

  @override
  Either<Failure, IsarCollection<CartDatabase>> getCartDatabase() {
    try {
      final resp = localDataSource.getCartDatabase();
      return Right(resp);
    } catch (e) {
      return const Left(LocalFailure());
    }
  }

  @override
  Either<Failure, IsarCollection<ProductDatabase>> getListProductDatabase() {
    try {
      final resp = localDataSource.getListProductDatabase();
      return Right(resp);
    } catch (e) {
      return const Left(LocalFailure());
    }
  }
}
