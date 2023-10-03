import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_update.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/repository/repository.dart';

@injectable
class UpdateTasks extends UseCase<bool, TaskForUpdate> {
  final TasksRepository tasksRepository;
  UpdateTasks({
    required this.tasksRepository,
  });
  @override
  Future<Either<Failure, bool>> call(TaskForUpdate params) async {
    return await tasksRepository.updateTask(params);
  }
}
