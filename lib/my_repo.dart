import 'package:health_care/users.dart';
import 'package:health_care/web_services.dart';

class MyRepo{
final WebServices webServices;
MyRepo(this.webServices);

Future<List<Users>> getAllUsers()async{

  return await webServices.getAllUsers();
}
Future<Users> createNewUser(Users newUser)async{
  return await webServices.createNewUser(newUser, 'Bearer 0298f6bf0f73d7ac9dd536389cb1d22d34c85bfda42b9d90c85c51e18f88cffa');

}
}