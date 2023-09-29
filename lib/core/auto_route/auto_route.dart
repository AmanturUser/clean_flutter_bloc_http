import 'package:auto_route/auto_route.dart';

import '../../feature/home_feature/presentation/home_page.dart';
import '../../feature/product_feature/presentation/product_page/product_list_page.dart';
import '../../feature/user_feature/presentation/user_page/user_list_page.dart';

part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes=>[
    AutoRoute(page: HomeRoute.page,path: '/'),
    AutoRoute(page: UserListRoute.page),
    AutoRoute(page: ProductListRoute.page),
  ];
}