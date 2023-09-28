import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/entities/user_read.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error_journal/error_journal.dart';
import '../data_sourse/user_server.dart';

@Injectable(as: UserRepository)

class UserRepositoryImpl implements UserRepository{
  final UserDataSourse userDataSourse;
  UserRepositoryImpl({required this.userDataSourse});

  Future<Either<Failure, UserForRead>> loadUsers() async{
    return await _loadUsers();
  }

  Future<Either<Failure,UserForRead>> _loadUsers()async{
    try{
      final user = await userDataSourse.loadUsers();
      return Right(user);
    }on Failure catch(e){
      throw Left(ServerError(error: e));
    }
  }
}