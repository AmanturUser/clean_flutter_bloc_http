import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/feature/aut_feature/domain/entities/password.dart';

abstract interface class PasswordRepository {
  Future<Either<Failure, bool>> writePassword(Password password);

  Future<Either<Failure, bool>> readPassword();

  Future<Either<Failure, bool>> loginPassword(Password password);
}
