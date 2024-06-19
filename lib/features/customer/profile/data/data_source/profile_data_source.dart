import 'package:grocery_store_app/core/service/graphql/api_service.dart';
import 'package:grocery_store_app/features/auth/data/models/user_role_response.dart';

class ProfileDataSource {
  const ProfileDataSource(this._api);

  final ApiService _api;

  // Get user Profile
  Future<UserRoleResponse> getUserInfo() async {
    final response = await _api.userRole();
    return response;
  }
}
