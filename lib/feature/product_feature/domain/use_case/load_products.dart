import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/core/use_case/use_case.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/domain/entities/product_entity.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadProducts extends UseCase<List<ProductModel>,NoParams>{
  final ProductRepository productRepository;
  LoadProducts({required this.productRepository});

  @override
  Future<Either<Failure, List<ProductModel>>> call(NoParams params) async{
    return await productRepository.loadProducts();
  }
}