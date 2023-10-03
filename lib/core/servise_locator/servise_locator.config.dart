import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import '../../feature/aut_feature/data/data_sourse/secure_stogage.dart' as _i16;
import '../../feature/aut_feature/data/repositories/password_repositories.dart' as _i20;
import '../../feature/aut_feature/domain/repository/password_repository.dart' as _i15;
import '../../feature/aut_feature/domain/repository/password_repository.dart' as _i21;
import '../../feature/aut_feature/domain/use_case/login_password.dart' as _i17;
import '../../feature/aut_feature/domain/use_case/read_password.dart' as _i18;
import '../../feature/aut_feature/domain/use_case/read_password.dart' as _i22;
import '../../feature/aut_feature/domain/use_case/write_password.dart' as _i19;
import '../../feature/aut_feature/presentation/bloc/auth_bloc.dart' as _i14;
import '../../feature/todo_feature/data/data_sourse/task_server.dart' as _i23;
import '../../feature/todo_feature/domain/repository/repository.dart' as _i24;
import '../../feature/todo_feature/data/repositories/task_repository.dart' as _i25;
import '../../feature/todo_feature/domain/use_case/delete_tasks.dart' as _i27;

import '../../feature/todo_feature/domain/use_case/load_tasks.dart' as _i28;
import '../../feature/todo_feature/domain/use_case/update_task.dart' as _i26;
import '../../feature/todo_feature/domain/use_case/write_tasks.dart' as _i29;

import '../../feature/todo_feature/presentation/bloc/todo_bloc.dart' as _i30;
import '../../feature/user_feature/data/data_sourse/user_server.dart' as _i3;
import '../../feature/user_feature/data/repositories/user_repository.dart'
    as _i5;
import '../../feature/user_feature/domain/repository/repository.dart' as _i6;
import '../../feature/user_feature/presentation/bloc/user_bloc.dart' as _i7;
import '../../feature/user_feature/domain/use_case/load_users.dart' as _i8;
import '../../feature/product_feature/data/data_sourse/product_server.dart'
    as _i9;
import '../../feature/product_feature/data/repositories/product_repository.dart'
    as _i10;
import '../../feature/product_feature/domain/repository/repository.dart'
    as _i11;
import '../../feature/product_feature/presentation/bloc/product_bloc.dart'
    as _i12;
import '../../feature/product_feature/domain/use_case/load_products.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.UserDataSourse>(() => _i3.UserDataSourse());
    gh.factory<_i6.UserRepository>(
        () => _i5.UserRepositoryImpl(userDataSourse: gh<_i3.UserDataSourse>()));
    gh.factory<_i8.LoadUsers>(
        () => _i8.LoadUsers(userRepository: gh<_i6.UserRepository>()));
    gh.factory<_i7.UserBloc>(() => _i7.UserBloc(
          loadUsers: gh<_i8.LoadUsers>(),
        ));

    gh.factory<_i9.ProductDataSourse>(() => _i9.ProductDataSourse());
    gh.factory<_i11.ProductRepository>(() => _i10.ProductRepositoryImpl(
        productDataSourse: gh<_i9.ProductDataSourse>()));
    gh.factory<_i13.LoadProducts>(() =>
        _i13.LoadProducts(productRepository: gh<_i11.ProductRepository>()));
    gh.factory<_i12.ProductBloc>(
        () => _i12.ProductBloc(loadProducts: gh<_i13.LoadProducts>()));

    gh.factory<_i16.SecureStorage>(() => _i16.SecureStorage());
    gh.factory<_i21.PasswordRepository>(() =>
        _i20.PasswordRepositoryImpl(secureStorage: gh<_i16.SecureStorage>()));
    gh.factory<_i22.ReadPassword>(() =>
        _i22.ReadPassword(passwordRepository: gh<_i21.PasswordRepository>()));

    gh.factory<_i19.WritePassword>(() =>
        _i19.WritePassword(passwordRepository: gh<_i15.PasswordRepository>()));
    gh.factory<_i17.LoginAcount>(() =>
        _i17.LoginAcount(passwordRepository: gh<_i15.PasswordRepository>()));
    gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(
      checkPassword: gh<_i18.ReadPassword>(),
      writePassword: gh<_i19.WritePassword>(),
      loginPerson: gh<_i17.LoginAcount>(),
    ));

    gh.factory<_i23.TaskDataSourse>(() => _i23.TaskDataSourse());
    gh.factory<_i24.TasksRepository>(
            () => _i25.TasksRepositoryImpl(gh<_i23.TaskDataSourse>()));
    gh.factory<_i26.UpdateTasks>(
            () => _i26.UpdateTasks(tasksRepository: gh<_i24.TasksRepository>()));
    gh.factory<_i29.WriteTasks>(
            () => _i29.WriteTasks(tasksRepository: gh<_i24.TasksRepository>()));
    gh.factory<_i27.DeleteTask>(
            () => _i27.DeleteTask(tasksRepository: gh<_i24.TasksRepository>()));
    gh.factory<_i28.LoadTasks>(
            () => _i28.LoadTasks(tasksRepository: gh<_i24.TasksRepository>()));

    gh.factory<_i30.TodoBloc>(() => _i30.TodoBloc(
      gh<_i27.DeleteTask>(),
      gh<_i28.LoadTasks>(),
      gh<_i26.UpdateTasks>(),
      gh<_i29.WriteTasks>(),
    ));
    return this;
  }
}
