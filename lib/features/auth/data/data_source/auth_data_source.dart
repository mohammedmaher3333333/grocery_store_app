import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_store_app/core/service/graphql/api_service.dart';
import 'package:grocery_store_app/core/service/graphql/qraphql_queries/auth/auth_queries.dart';
import 'package:grocery_store_app/features/auth/data/models/login_request_body.dart';
import 'package:grocery_store_app/features/auth/data/models/login_response.dart';
import 'package:grocery_store_app/features/auth/data/models/user_role_response.dart';

class AuthDataSource {
  const AuthDataSource(this._graphql);

  final ApiService _graphql;

  //Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response =
        await _graphql.login(AuthQueries().loginMapQuery(body: body));
    return response;
  }

  //UserRole
  Future<UserRoleResponse> userRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.userRole();
    debugPrint('User Role => ${response.userRole}');
    return response;
  }

  //SignUp
  // Future<SignUpResponse> signUp({required SignUpRequestBody body}) async {
  //   final response =
  //       await _graphql.signUp(AuthQueries().signUpMapQuery(body: body));
  //   return response;
  // }
  //
  // // add user id in firebase to used with notfication data base
  // Future<void> addUserIdFirebase({required String userId}) async {
  //   await FirebaseFirestore.instance
  //       .collection(usersCollection)
  //       .doc(userId)
  //       .set({});
  // }
}
