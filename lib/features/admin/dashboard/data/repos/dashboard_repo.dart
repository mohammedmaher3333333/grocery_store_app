// import 'package:grocery_store_app/core/service/graphql/api_result.dart';
// import 'package:grocery_store_app/core/utils/app_strings.dart';
// import 'package:grocery_store_app/features/admin/dashboard/data/models/categories_number_response.dart';
// import 'package:grocery_store_app/features/admin/dashboard/data/models/porducts_number_response.dart';
// import 'package:grocery_store_app/features/admin/dashboard/data/models/users_number_response.dart';
//
// class DashBoardRepo {
//   const DashBoardRepo(this._dataSource);
//
//   final DashBoardDataSource _dataSource;
//
//   // Get Numbers Of Products
//   Future<ApiResult<ProductsNumberResponse>> numberOfProducts() async {
//     try {
//       final response = await _dataSource.numberOfProducts();
//       return ApiResult.success(response);
//     } catch (error) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
//
//   // Get Numbers Of Categories
//   Future<ApiResult<CategoriesNumberResponse>> numberOfCategories() async {
//     try {
//       final response = await _dataSource.numberOfCategories();
//       return ApiResult.success(response);
//     } catch (error) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
//
//   // Get Numbers Of users
//   Future<ApiResult<UsersNumberResponse>> numberOfUsers() async {
//     try {
//       final response = await _dataSource.numberOfUsers();
//       return ApiResult.success(response);
//     } catch (error) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
// }
