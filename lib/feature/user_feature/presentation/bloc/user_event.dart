part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class LoadUsersEvent extends UserEvent {
  @override
  List<Object> get props => [];
}


