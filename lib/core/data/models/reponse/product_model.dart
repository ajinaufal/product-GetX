import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ListProductModel with _$ListProductModel {
  const factory ListProductModel({
    List<ProductModel>? products,
    int? total,
    int? skip,
    int? limit,
  }) = _ListProductModel;

  factory ListProductModel.fromJson(Map<String, dynamic> json) =>
      _$ListProductModelFromJson(json);
}

extension ListProductModelX on ListProductModel {
  ListProductEntities toEntity() {
    return ListProductEntities(
      products: products?.map((e) => e.toEntity()).toList(),
      total: total,
      skip: skip,
      limit: limit,
    );
  }
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
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
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntities toEntity() {
    return ProductEntities(
      id: id,
      title: title,
      description: description,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      brand: brand,
      category: category,
      thumbnail: thumbnail,
      images: images,
    );
  }
}
