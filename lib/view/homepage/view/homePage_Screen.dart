// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/my_cubit.dart';

import '../../../users.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<Users> usersList =[];
  Users user = Users();
  @override
  void initState(){
    super.initState();
    BlocProvider.of<MyCubit>(context).emitCreateNewUser(Users(
      username: 'Amr',
       email: "amr@gmail.com",
      password: "12345"

    ));
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
