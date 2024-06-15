import 'package:grocery_store_app/core/service/graphql/api_result.dart';
import 'package:grocery_store_app/core/utils/app_strings.dart';
import 'package:grocery_store_app/features/admin/add_categories/data/models/get_all_categories_reponse.dart';
import 'package:grocery_store_app/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:grocery_store_app/features/customer/home/data/data_source/home_data_source.dart';
import 'package:grocery_store_app/features/customer/home/data/models/banners_response.dart';

class HomeRepo {
  HomeRepo(this._dataSource);

  final HomeDataSource _dataSource;

  // Get Banners
  Future<ApiResult<BannersResponse>> getBanners() async {
    try {
      final response = await _dataSource.getBanners();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }

  // Get All Categories
  Future<ApiResult<CategoriesGetAllResponse>> getAllCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }

  // Get All Products
  Future<ApiResult<GetAllProductResponse>> getAllProducts() async {
    try {
      final response = await _dataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
