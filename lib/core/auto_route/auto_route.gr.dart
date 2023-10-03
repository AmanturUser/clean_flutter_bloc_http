part of 'auto_route.dart';


abstract class _$AppRouter extends RootStackRouter{
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap={
    UserListRoute.name: (routeData){
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UsersPage()
      );
    },
    ProductListRoute.name: (routeData){
      return AutoRoutePage<dynamic>(
          routeData: routeData,
          child: const ProductsPage()
      );
    },
    HomeRoute.name: (routeData){
      return AutoRoutePage<dynamic>(
          routeData: routeData,
          child: const HomePage()
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    AddTaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddTaskPage(),
      );
    },
    TodoTasksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodoTasks(),
      );
    },
  };
}

class UserListRoute extends PageRouteInfo<void>{
  static const String name='UserList';
  static const PageInfo<void> page=PageInfo<void>(name);
  const UserListRoute({List<PageRouteInfo>? children}): super(UserListRoute.name,initialChildren: children);
}

class ProductListRoute extends PageRouteInfo<void>{
  static const String name='ProductList';
  static const PageInfo<void> page=PageInfo<void>(name);
  const ProductListRoute({List<PageRouteInfo>? children}): super(ProductListRoute.name,initialChildren: children);
}

class HomeRoute extends PageRouteInfo<void>{
  static const String name='Home';
  static const PageInfo<void> page=PageInfo<void>(name);
  const HomeRoute({List<PageRouteInfo>? children}): super(HomeRoute.name,initialChildren: children);
}

class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
    AuthRoute.name,
    initialChildren: children,
  );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class TodoTasksRoute extends PageRouteInfo<void> {
  const TodoTasksRoute({List<PageRouteInfo>? children})
      : super(
    TodoTasksRoute.name,
    initialChildren: children,
  );

  static const String name = 'TodoTasks';

  static const PageInfo<void> page = PageInfo<void>(name);
}

class AddTaskRoute extends PageRouteInfo<void> {
  const AddTaskRoute({List<PageRouteInfo>? children})
      : super(
    AddTaskRoute.name,
    initialChildren: children,
  );

  static const String name = 'AddTaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}