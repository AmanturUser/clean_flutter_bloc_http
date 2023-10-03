import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';

import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_write.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/repository/repository.dart';

@injectable
class WriteTasks extends UseCase<bool, TaskForWrite> {
  final TasksRepository tasksRepository;
  WriteTasks({
    required this.tasksRepository,
  });
  @override
  Future<Either<Failure, bool>> call(TaskForWrite task) async {
    return await tasksRepository.writeTask(task);
  }
}
