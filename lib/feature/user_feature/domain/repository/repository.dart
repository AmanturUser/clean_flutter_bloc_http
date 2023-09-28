import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/domain/entities/user_read.dart';

import '../../../../core/error_journal/error_journal.dart';

abstract interface class UserRepository {
  Future<Either<Failure, UserForRead>> loadUsers();
}
