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
    }
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