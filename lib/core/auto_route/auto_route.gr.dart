part of 'auto_route.dart';


abstract class _$AppRouter extends RootStackRouter{
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap={
    UserListRoute.name: (routeData){
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UsersScreen()
      );
    }
  };
}

class UserListRoute extends PageRouteInfo<void>{
  static const String name='UserList';
  static const PageInfo<void> page=PageInfo<void>(name);
  const UserListRoute({List<PageRouteInfo>? children}): super(UserListRoute.name,initialChildren: children);
}