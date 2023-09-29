import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_get_clean/core/error_journal/error_journal.dart';
import 'package:flutter_bloc_get_clean/feature/product_feature/domain/entities/product_entity.dart';

abstract interface class ProductRepository{
  Future<Either<Failure,List<ProductModel>>> loadProducts();
}