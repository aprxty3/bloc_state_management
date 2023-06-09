part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  UserState(this.allUser);

  List<UserModel> allUser;

  @override
  List<Object> get props => [allUser];
}

class UserInitial extends UserState {
  UserInitial(super.allUser);
}
