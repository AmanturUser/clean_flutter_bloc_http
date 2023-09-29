import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
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
    return this;
  }
}
