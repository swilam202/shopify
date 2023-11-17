import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/search%20feature/data/data%20source/search%20data%20source.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/entites/category%20products.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/repository/base%20search%20repository.dart';

import '../../../../core/services/api/server exception.dart';

class SearchRepository extends BaseSearchRepository{
  BaseSearchDataSource baseSearchDataSource;
  SearchRepository(this.baseSearchDataSource);

  @override
  Future<Either<Exception, List<Products>?>> getCategoryProducts(int id) async{
    List<Products>? data = await baseSearchDataSource.getCategoryProducts(id);
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, List<Products>?>> postSearch(String keyword) async{
    List<Products>? data = await baseSearchDataSource.postSearch(keyword);
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

}