import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/bloc/user/user_event.dart';
import 'package:mockapi/bloc/user/user_state.dart';
import 'package:mockapi/controller/user_controller.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserController _controller;
  UserBloc(UserController controller)
      : _controller = controller,
        super(InitialState()) {
    on<CreateUserEvent>((event, emit) async {
      try {
        emit(LoadingState());
        final success = await _controller.createUser(event.name);
        if (success) {
          emit(SuccessState());
        } else {
          emit(const FailedState(message: "failed to create user"));
        }
      } catch (e) {
        emit(FailedState(message: e.toString()));
      }
    });
  }
}
