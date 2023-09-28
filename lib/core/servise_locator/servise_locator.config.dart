import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import '../../feature/user_feature/data/data_sourse/user_server.dart' as _i4;
import '../../feature/user_feature/data/repositories/user_repository.dart'
    as _i6;
import '../../feature/user_feature/domain/repository/repository.dart' as _i5;
import '../../feature/user_feature/presentation/bloc/user_bloc.dart' as _i14;
import '../../feature/user_feature/domain/use_case/load_users.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i4.UserDataSourse>(() => _i4.UserDataSourse());
    gh.factory<_i5.UserRepository>(
        () => _i6.UserRepositoryImpl(userDataSourse: gh<_i4.UserDataSourse>()));
    gh.factory<_i10.LoadUsers>(
        () => _i10.LoadUsers(userRepository: gh<_i5.UserRepository>()));
    gh.factory<_i14.UserBloc>(() => _i14.UserBloc(loadUsers:
          gh<_i10.LoadUsers>(),
        ));
    return this;
  }
}
