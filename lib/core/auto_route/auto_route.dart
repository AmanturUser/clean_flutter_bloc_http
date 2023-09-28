import 'package:auto_route/auto_route.dart';

import '../../feature/user_feature/presentation/user_page/user_list_page.dart';

part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes=>[
    AutoRoute(page: UserListRoute.page,path: '/')
  ];
}