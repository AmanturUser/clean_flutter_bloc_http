import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_read.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_update.dart';
import 'package:flutter_bloc_get_clean/feature/todo_feature/domain/entities/task_for_write.dart';

abstract interface class TasksRepository {
  Future<Either<Failure, List<TasksForRead>>> loadTasks();

  Future<Either<Failure, bool>> deleteTask(String id);

  Future<Either<Failure, bool>> writeTask(TaskForWrite task);

  Future<Either<Failure, bool>> updateTask(TaskForUpdate task);
}
