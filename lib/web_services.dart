
import 'package:dio/dio.dart';
import 'package:health_care/users.dart';
import 'package:retrofit/retrofit.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: "https://graduateproject.pythonanywhere.com/accounts/")
abstract class WebServices{

  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

@GET('')
  Future<List<Users>> getAllUsers();
@POST("register")
  Future<Users> createNewUser(
    @Body() Users newuser , @Header('authorization') String token);

}