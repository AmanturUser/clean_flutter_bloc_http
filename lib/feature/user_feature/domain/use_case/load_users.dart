import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/entities/user_read.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error_journal/error_journal.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class LoadUsers extends UseCase<UserForRead, NoParams>{
  final UserRepository userRepository;
  LoadUsers({required this.userRepository});

  @override
  Future<Either<Failure, UserForRead>> call(NoParams params)async{
    return await userRepository.loadUsers();
  }
}