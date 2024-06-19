import 'package:grocery_store_app/core/service/graphql/api_result.dart';
import 'package:grocery_store_app/core/utils/app_strings.dart';
import 'package:grocery_store_app/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:grocery_store_app/features/customer/products_view_all/data/data_source/products_view_all_data_source.dart';

class ProductsViewAllRepo {
  ProductsViewAllRepo(this._dataSource);

  final ProductsViewAllDataSource _dataSource;

  // Get Banners
  Future<ApiResult<GetAllProductResponse>> getProductsViewAll({
    required int offset,
  }) async {
    try {
      final response = await _dataSource.getProductsViewAll(offset: offset);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
