import 'package:equatable/equatable.dart';

class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class CreateUserEvent extends UserEvent {
  final String name;
  const CreateUserEvent({required this.name});

  @override
  List<Object?> get props => [name];
}
