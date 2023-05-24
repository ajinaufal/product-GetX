import 'package:cart_product_test/core/data/models/reponse/product_model.dart';
import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:cart_product_test/core/services/api_services.dart';

abstract class ProductRemoteDataSource {
  Future<ListProductEntities> getProduct();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  const ProductRemoteDataSourceImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<ListProductEntities> getProduct() async {
    final resp = await apiService.get('/products', queryParameters: {
      "limit": 100,
    });
    final model = ListProductModel.fromJson(resp.data);

    if (resp.statusCode == 200) return model.toEntity();
    throw Exception(resp);
  }
}
