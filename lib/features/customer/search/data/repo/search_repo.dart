import 'package:grocery_store_app/core/service/graphql/api_result.dart';
import 'package:grocery_store_app/core/utils/app_strings.dart';
import 'package:grocery_store_app/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:grocery_store_app/features/customer/search/data/data_source/search_data_source.dart';
import 'package:grocery_store_app/features/customer/search/data/models/search_request_body.dart';

class SearchRepo {
  const SearchRepo(this._dataSource);

  final SearchDataSource _dataSource;

  // Search for product
  Future<ApiResult<GetAllProductResponse>> searchProduct({
    required SearchRequestBody body,
  }) async {
    try {
      final response = await _dataSource.searchProduct(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
