// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/service/shared_pref/pref_keys.dart';
import 'package:grocery_store_app/core/service/shared_pref/shared_pref.dart';
import 'package:grocery_store_app/core/utils/app_logout.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      debugPrint(
        "[USER Token] ====> ${SharedPref().getString(PrefKeys.accessToken) ?? 'NULL TOKEN'}",
      );

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        request: false,
        compact: false,
      ),
    );
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer ${SharedPref().getString(PrefKeys.accessToken)}';

          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 400 ||
              error.response?.statusCode == 401) {
            await AppLogout().logout();
          }
        },
      ),
    );
  }
}

// // ignore_for_file: lines_longer_than_80_chars
//
// import 'package:asroo_store/core/service/shared_pref/pref_keys.dart';
// import 'package:asroo_store/core/service/shared_pref/shared_pref.dart';
// import 'package:asroo_store/core/utils/app_logout.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
//
// class DioFactory {
//   DioFactory._();
//
//   static Dio? dio;
//
//   static Dio getDio() {
//     const timeOut = Duration(seconds: 30);
//
//     if (dio == null) {
//       dio = Dio();
//       dio!
//         ..options.connectTimeout = timeOut
//         ..options.receiveTimeout = timeOut;
//
//       debugPrint(
//         "[USER Token] ====> ${SharedPref().getString(PrefKeys.accessToken) ?? 'NULL TOKEN'}",
//       );
//
//       addDioInterceptor();
//       return dio!;
//     } else {
//       return dio!;
//     }
//   }
//
//   static void addDioInterceptor() {
//     dio?.interceptors.add(
//       PrettyDioLogger(
//         request: false,
//         compact: false,
//       ),
//     );
//     dio?.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           options.headers['Authorization'] =
//           'Bearer ${SharedPref().getString(PrefKeys.accessToken)}';
//
//           return handler.next(options);
//         },
//         onError: (error, handler) async {
//           if (error.response?.statusCode == 401) {
//             await AppLogout().logout();
//           }
//         },
//       ),
//     );
//   }
// }
