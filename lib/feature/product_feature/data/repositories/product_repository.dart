import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/domain/entities/product_entity.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../data_sourse/product_server.dart';

@Injectable(as: ProductRepository)

class ProductRepositoryImpl implements ProductRepository{
  final ProductDataSourse productDataSourse;
  ProductRepositoryImpl({required this.productDataSourse});

  Future<Either<Failure, List<ProductModel>>> loadProducts() {
    return _loadProducts();
  }

  Future<Either<Failure,List<ProductModel>>> _loadProducts() async{
    try{
      final products=await productDataSourse.loadProducts();
      return Right(products);
    }on Failure catch(e){
      throw Left(ServerError(error: e));
    }
  }
}