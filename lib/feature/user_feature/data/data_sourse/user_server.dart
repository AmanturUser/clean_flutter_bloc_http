import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/entities/user_read.dart';
import 'package:http/http.dart' as http;

abstract interface class IUserDataSourse{
  Future<UserForRead> loadUsers();
}

@injectable
class UserDataSourse implements IUserDataSourse{
  final url='https://reqres.in/api/users?page=2';

  @override
  Future<UserForRead> loadUsers()async{
    final response=await http.get(Uri.parse(url));

    if(response.statusCode==200){
      print(response.body);
      return UserForRead.fromJson(jsonDecode(response.body));
    }else{
      print(response.statusCode);
      throw Exception(response.reasonPhrase);
    }
  }
}