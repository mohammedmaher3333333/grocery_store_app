import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:grocery_store_app/core/app/app_cubit.dart';
import 'package:grocery_store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:grocery_store_app/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:grocery_store_app/core/app/upload_image/repo/upload_image_repo.dart';
import 'package:grocery_store_app/core/service/graphql/api_service.dart';
import 'package:grocery_store_app/core/service/graphql/dio_factory.dart';
import 'package:grocery_store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:grocery_store_app/features/admin/add_categories/data/repos/categoreis_admin_repos.dart';
import 'package:grocery_store_app/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:grocery_store_app/features/admin/dashboard/data/data_soruce/dashboard_data_source.dart';
import 'package:grocery_store_app/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:grocery_store_app/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:grocery_store_app/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:grocery_store_app/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:grocery_store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:grocery_store_app/features/auth/data/repos/auth_repo.dart';
import 'package:grocery_store_app/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initDashBoard();
  await _initCategoriesAdmin();
  // await _initProductsAdmin();
  // await _initUsersAdmin();
  // await _initAddNotification();
  // await _initMain();
  // await _initProfile();
  // await _initHome();
  // await _initProductDetails();
  // await _initCategory();
  // await _initProductsViewAll();
  // await _initSearch();
  // await _initFavorites();
}

 Future<void> _initCore() async {
   final dio = DioFactory.getDio();
   final navigatorKey = GlobalKey<NavigatorState>();

  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
    ..registerFactory(() => UploadImageCubit(sl()))
//     ..registerFactory(ShareCubit.new)
     ..registerLazySingleton(() => UploadImageRepo(sl()))
     ..registerLazySingleton(() => UploadImageDataSource(sl()))
;
 }
//
 Future<void> _initAuth() async {
   sl
     ..registerFactory(() => AuthBloc(sl()))
     ..registerLazySingleton(() => AuthRepos(sl()))
     ..registerLazySingleton(() => AuthDataSource(sl()));
}

Future<void> _initDashBoard() async {
  sl
    ..registerLazySingleton(() => DashBoardDataSource(sl()))
    ..registerLazySingleton(() => DashBoardRepo(sl()))
    ..registerFactory(() => ProductsNumberBloc(sl()))
    ..registerFactory(() => CategoriesNumberBloc(sl()))
    ..registerFactory(() => UsersNumberBloc(sl()));
}

Future<void> _initCategoriesAdmin() async {
  sl
    ..registerLazySingleton(() => CategoreisAdminRepo(sl()))
    ..registerLazySingleton(() => CategoriesAdminDataSource(sl()))
    ..registerFactory(() => GetAllAdminCategoriesBloc(sl()))
    // ..registerFactory(() => CreateCategoryBloc(sl()))
    // ..registerFactory(() => DeleteCategoryBloc(sl()))
    // ..registerFactory(() => UpdateCategoryBloc(sl()))
  ;
}

// Future<void> _initProductsAdmin() async {
//   sl
//     ..registerLazySingleton(() => ProductsAdminRepo(sl()))
//     ..registerLazySingleton(() => ProductsAdminDataSource(sl()))
//     ..registerFactory(() => GetAllAdminProductBloc(sl()))
//     ..registerFactory(() => CreateProdcutBloc(sl()))
//     ..registerFactory(() => DeleteProductBloc(sl()))
//     ..registerFactory(() => UpdateProductBloc(sl()));
// }
//
// Future<void> _initUsersAdmin() async {
//   sl
//     ..registerLazySingleton(() => UsersRepo(sl()))
//     ..registerLazySingleton(() => UserDataSource(sl()))
//     ..registerFactory(() => GetAllUsersBloc(sl()))
//     ..registerFactory(() => DeleteUserBloc(sl()));
// }
//
// Future<void> _initAddNotification() async {
//   sl
//     ..registerFactory(AddNotificationBloc.new)
//     ..registerFactory(GetAllNotificationAdminBloc.new)
//     ..registerFactory(() => SendNotificationBloc(sl()))
//     ..registerLazySingleton(() => AddNotificationRepo(sl()))
//     ..registerLazySingleton(AddNotificationDataSource.new);
// }
//
// Future<void> _initMain() async {
//   sl.registerFactory(MainCubit.new);
// }
//
// Future<void> _initProfile() async {
//   sl
//     ..registerFactory(() => ProfileBloc(sl()))
//     ..registerLazySingleton(() => ProfileRepo(sl()))
//     ..registerLazySingleton(() => ProfileDataSource(sl()));
// }
//
// Future<void> _initHome() async {
//   sl
//     ..registerFactory(() => GetBannersBloc(sl()))
//     ..registerFactory(() => GetAllCategoriesBloc(sl()))
//     ..registerFactory(() => GetAllProductsBloc(sl()))
//     ..registerLazySingleton(() => HomeRepo(sl()))
//     ..registerLazySingleton(() => HomeDataSource(sl()));
// }
//
// Future<void> _initProductDetails() async {
//   sl
//     ..registerFactory(() => ProductDetailsBloc(sl()))
//     ..registerLazySingleton(() => ProductDetailsRepo(sl()))
//     ..registerLazySingleton(() => ProductDetailsDataSource(sl()));
// }
//
// Future<void> _initCategory() async {
//   sl
//     ..registerFactory(() => GetCategoryBloc(sl()))
//     ..registerLazySingleton(() => CatgeoryRepo(sl()))
//     ..registerLazySingleton(() => CatgeoryDataSource(sl()));
// }
//
// Future<void> _initProductsViewAll() async {
//   sl
//     ..registerFactory(() => ProductsViewAllBloc(sl()))
//     ..registerLazySingleton(() => ProductsViewAllRepo(sl()))
//     ..registerLazySingleton(() => ProductsViewAllDataSource(sl()));
// }
//
// Future<void> _initSearch() async {
//   sl
//     ..registerFactory(() => SearchBloc(sl()))
//     ..registerLazySingleton(() => SearchRepo(sl()))
//     ..registerLazySingleton(() => SearchDataSource(sl()));
// }
//
// Future<void> _initFavorites() async {
//   sl.registerFactory(FavoritesCubit.new);
// }
