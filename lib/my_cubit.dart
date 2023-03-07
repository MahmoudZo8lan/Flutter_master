import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_care/my_repo.dart';
import 'package:health_care/users.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());
  void emitGetAllUsers(){
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));

    });
  }
  void emitCreateNewUser(Users newUser){
    myRepo.createNewUser(newUser).then((newUser) {
      emit(CreatNewUser(newUser));

    });
  }
}
