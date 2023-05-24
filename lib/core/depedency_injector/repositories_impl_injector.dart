import 'package:cart_product_test/core/data/datasource/local/product_remote_local_data_source.dart';
import 'package:cart_product_test/core/data/datasource/remote/product_remote_data_source.dart';
import 'package:cart_product_test/core/data/repository_impl/product_repositories_impl.dart';
import 'package:cart_product_test/core/domain/repositories/product_repositories.dart';
import 'package:cart_product_test/core/helper/network_helper.dart';
import 'package:cart_product_test/core/services/api_services.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class RepositoriesImplInjection {
  static void init() {
    final networkInfo = NetworkInfoImpl(
      dataConnectionChecker: InternetConnectionChecker(),
    );
    final productRemoteDataSource = ProductRemoteDataSourceImpl(
      apiService: ApiService(),
    );

    final productLocalDataSource = ProductLocalDataSourceImpl();

    Get.put<ProductRepositories>(
      ProductRepositoriesImpl(
        networkInfo: networkInfo,
        remoteDataSource: productRemoteDataSource,
        localDataSource: productLocalDataSource,
      ),
      tag: 'productRepositories',
    );
  }
}
