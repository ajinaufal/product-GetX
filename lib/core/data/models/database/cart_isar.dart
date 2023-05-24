import 'package:isar/isar.dart';

part 'cart_isar.g.dart';

@collection
@Name("CartDatabase")
class CartDatabase {
  @Name("id")
  late Id id;
  @Name("total")
  int total = 1;
  @Name("product")
  ProductCartDatabase? product;
}

@embedded
@Name("ProductCartDatabase")
class ProductCartDatabase {
  @Name("title")
  String? title;
  @Name("description")
  String? description;
  @Name("price")
  int? price;
  @Name("discountPercentage")
  double? discountPercentage;
  @Name("rating")
  double? rating;
  @Name("stock")
  int? stock;
  @Name("brand")
  String? brand;
  @Name("category")
  String? category;
  @Name("thumbnail")
  String? thumbnail;
  @Name("images")
  List<String>? images;
}
