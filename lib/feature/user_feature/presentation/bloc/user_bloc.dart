import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';

import '../../domain/entities/user_read.dart';
import '../../domain/use_case/load_users.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {

  final LoadUsers loadUsers;
  UserBloc({required this.loadUsers}) : super(UserInitial()) {
    on<LoadUsersEvent>(_loadUsers);
  }

  _loadUsers(LoadUsersEvent event, Emitter emit) async{
    emit(LoadingUserState());
    final either=await loadUsers.call(NoParams());
    either.fold((error) => emit(ErrorUserState(error: error)), (users) {
      print('len of list ${users.data!.length}');
      emit(LoadedUserState(users: users));
    });
  }
}
