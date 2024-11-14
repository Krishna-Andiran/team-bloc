import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/bloc/user/user_bloc.dart';
import 'package:mockapi/controller/user_controller.dart';
import 'package:mockapi/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(UserController()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: const Home(),
      ),
    );
  }
}
