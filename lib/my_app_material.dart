import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/presentation/bloc/product_bloc.dart';

import 'core/auto_route/auto_route.dart';
import 'core/servise_locator/servise_locator.dart';
import 'feature/aut_feature/presentation/bloc/auth_bloc.dart';
import 'feature/todo_feature/presentation/bloc/todo_bloc.dart';
import 'feature/user_feature/presentation/bloc/user_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter=AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TodoBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'The BLoC App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}