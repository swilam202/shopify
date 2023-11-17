import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/entites/category%20products.dart';

abstract class BaseSearchRepository{
  Future<Either<Exception,List<Products>?>> postSearch(String keyword);
  Future<Either<Exception,List<Products>?>> getCategoryProducts(int id);
}