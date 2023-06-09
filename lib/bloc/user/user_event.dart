part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUserEvent extends UserEvent {
  AddUserEvent(this.user);

  final UserModel user;
}

class DeleteUserEvent extends UserEvent {
  DeleteUserEvent(this.user);

  final UserModel user;
}
