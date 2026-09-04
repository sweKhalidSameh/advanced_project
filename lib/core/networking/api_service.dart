import 'package:advanced_project/core/networking/api_constants.dart';
import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) =>
      _ApiService(dio, baseUrl: baseUrl);

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
