//
// import 'package:grocery_store_app/core/service/graphql/api_result.dart';
// import 'package:grocery_store_app/core/utils/app_strings.dart';
//
// import '../models/create_product_request_body.dart';
//
// class ProductsAdminRepo {
//   const ProductsAdminRepo(this._dataSource);
//
//   final ProductsAdminDataSource _dataSource;
//
//   // Get All Products Admin
//   Future<ApiResult<GetAllProductResponse>> getAllProductsAdmin() async {
//     try {
//       final response = await _dataSource.getAllProductsAdmin();
//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
//
//   // Create Products Admin
//   Future<ApiResult<void>> createProductsAdmin({
//     required CreateProductRequestBody body,
//   }) async {
//     try {
//       final response = await _dataSource.createProductsAdmin(body: body);
//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
//
//   // Delete Products
//   Future<ApiResult<void>> deleteProducts({
//     required String productId,
//   }) async {
//     try {
//       final response = await _dataSource.deleteProducts(productId: productId);
//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
//
//   // Update Products Admin
//   Future<ApiResult<void>> updateProductsAdmin({
//     required UpdateProductRequestBody body,
//   }) async {
//     try {
//       final response = await _dataSource.updateProductsAdmin(body: body);
//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure(errorMessage);
//     }
//   }
// }
