import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';
import 'package:flutter_bloc_get_clean/feature/aut_feature/domain/entities/password.dart';
import 'package:flutter_bloc_get_clean/feature/aut_feature/domain/repository/password_repository.dart';

@injectable
class WritePassword implements UseCase<bool, Password> {
  final PasswordRepository passwordRepository;
  WritePassword({
    required this.passwordRepository,
  });
  @override
  Future<Either<Failure, bool>> call(Password password) async {
    return await passwordRepository.writePassword(password);
  }
}
