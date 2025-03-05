import 'package:dio/dio.dart';
import 'api_service.dart';
import 'storage_service.dart';

class AuthService {
  final ApiService _api = ApiService();
  final StorageService _storage = StorageService();

  Future<bool> login(String email, String password) async {
    try {
      Response response = await _api.post('/mobile-app/login', {
        "email": email,
        "password": password,
      });

      if (response.statusCode == 200) {
        String token = response.data['token'];
        await _storage.saveToken(token);
        return true;
      }
    } on DioException catch (e) {
      throw Exception("Login failed: $e");
    }
    return false;
  }

  Future<void> logout() async {
    await _storage.clearToken();
  }

  Future<bool> isLoggedIn() async {
    String? token = await _storage.getToken();
    return token != null;
  }
}
