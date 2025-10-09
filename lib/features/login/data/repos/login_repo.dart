import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response.dart';

class LoginRepo {
  ApiService apiService;
  LoginRepo({required this.apiService});

  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      print("success 1");
      final response = await apiService.login(body);
      print("success");
      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
