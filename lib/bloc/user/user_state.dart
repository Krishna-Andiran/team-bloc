import 'package:equatable/equatable.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class InitialState extends UserState {}

class LoadingState extends UserState {}

class SuccessState extends UserState {}

class FailedState extends UserState {
  final String message;
  const FailedState({required this.message});

  @override
  List<Object?> get props => [message];
}
