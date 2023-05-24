import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/data/models/database/product_isar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entities.freezed.dart';

@freezed
class ListProductEntities with _$ListProductEntities {
  const factory ListProductEntities({
    List<ProductEntities>? products,
    int? total,
    int? skip,
    int? limit,
  }) = _ListProductEntities;
}

@freezed
class ProductEntities with _$ProductEntities {
  const factory ProductEntities({
    required int id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) = _ProductEntities;
}

extension ProductEntitiesX on ProductEntities {
  ProductDatabase toProductDatabase() {
    return ProductDatabase()
      ..id = id
      ..title = title
      ..description = description
      ..price = price
      ..discountPercentage = discountPercentage
      ..rating = rating
      ..stock = stock
      ..brand = brand
      ..category = category
      ..thumbnail = thumbnail
      ..images = images;
  }
}

extension ProductEntitiesY on ProductEntities {
  CartDatabase toCartDatabase() {
    final product = ProductCartDatabase()
      ..title = title
      ..description = description
      ..price = price
      ..discountPercentage = discountPercentage
      ..rating = rating
      ..stock = stock
      ..brand = brand
      ..category = category
      ..thumbnail = thumbnail
      ..images = images;
    return CartDatabase()
      ..id = id
      ..product = product;
  }
}
