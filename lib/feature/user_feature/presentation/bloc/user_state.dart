part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class LoadingUserState extends UserState{
  @override
  List<Object> get props=>[];
}

class LoadedUserState extends UserState{
  final UserForRead users;
  LoadedUserState({required this.users});
  @override
  List<Object> get props=>[users];
}

class ErrorUserState extends UserState{
  final Object error;
  ErrorUserState({required this.error});
  @override
  List<Object> get props=>[error];
}
