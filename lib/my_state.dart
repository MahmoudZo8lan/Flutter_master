part of 'my_cubit.dart';
@immutable
abstract class MyState   {}

class MyInitial extends MyState {}

class GetAllUsers extends MyState{
  final List<Users> allUsersList;
  GetAllUsers(this.allUsersList);


}
class CreatNewUser extends MyState{
  final Users newUser;
  CreatNewUser(this.newUser);
}