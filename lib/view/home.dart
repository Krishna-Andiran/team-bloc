import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/bloc/user/user_bloc.dart';
import 'package:mockapi/bloc/user/user_event.dart';
import 'package:mockapi/bloc/user/user_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is SuccessState) {
          debugPrint("Success");
        } else if (state is FailedState) {
          debugPrint(state.message);
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: _controller,
              onChanged: (value) {},
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<UserBloc>()
                      .add(CreateUserEvent(name: _controller.text));
                  _controller.clear();
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
