import 'package:isar/isar.dart';

part 'product_isar.g.dart';

@collection
@Name("ProductDatabase")
class ProductDatabase {
  @Name("id")
  Id? id;
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
