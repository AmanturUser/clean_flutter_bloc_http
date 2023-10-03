import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_read.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/repository/repository.dart';

@injectable
class LoadTasks extends UseCase<List<TasksForRead>, NoParams> {
  final TasksRepository tasksRepository;
  LoadTasks({
    required this.tasksRepository,
  });
  @override
  Future<Either<Failure, List<TasksForRead>>> call(NoParams params) async {
    return await tasksRepository.loadTasks();
  }
}
