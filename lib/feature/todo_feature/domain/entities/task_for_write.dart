
import 'package:equatable/equatable.dart';

class TaskForWrite extends Equatable {
  final int order;
  final String title;
  const TaskForWrite({
    required this.order,
    required this.title,
  });

  @override
  List<Object> get props => [order, title];
}
