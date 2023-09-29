import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/presentation/product_page/product_list_page.dart';
import 'package:flutter_bloc_get_clean/feature/user_feature/presentation/user_page/user_list_page.dart';

import '../../../core/auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The BLoC App'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              AutoRouter.of(context).push(UserListRoute());
            }, child: Text('Users')),
            ElevatedButton(onPressed: (){
              AutoRouter.of(context).push(ProductListRoute());
            }, child: Text('Products')),
          ],
        ),
      ),
    );
  }
}