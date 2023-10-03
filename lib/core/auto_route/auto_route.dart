import 'package:auto_route/auto_route.dart';

import '../../feature/aut_feature/presentation/auth_page/auth_page.dart';
import '../../feature/todo_feature/presentation/todo_page/add_task_page.dart';
import '../../feature/todo_feature/presentation/todo_page/todo_tasks_page.dart';
import '../../home/home_page.dart';
import '../../feature/product_feature/presentation/product_page/product_list_page.dart';
import '../../feature/user_feature/presentation/user_page/user_list_page.dart';

part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes=>[
    AutoRoute(page: AuthRoute.page,initial: true),
    AutoRoute(page: HomeRoute.page,children: [
      AutoRoute(page: UserListRoute.page),
      AutoRoute(page: ProductListRoute.page),
      AutoRoute(page: TodoTasksRoute.page),
    ]),
    AutoRoute(page: AddTaskRoute.page)
  ];
}