import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/entities/user_read.dart';
import '../bloc/user_bloc.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});


  @override
  Widget build(context) {
    final userBloc = context.read<UserBloc>()..add(LoadUsersEvent());
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state is LoadingUserState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is LoadedUserState) {
            final UserForRead users = state.users;
            return ListView.builder(
                itemCount: users.data!.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(users.data![index].firstName!),
                    subtitle: Text(users.data![index].lastName!),
                    trailing: CircleAvatar(
                      backgroundImage:
                      NetworkImage(users.data![index].avatar!),
                    ),
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}
