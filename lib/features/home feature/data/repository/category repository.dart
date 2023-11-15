import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/home%20feature/data/data%20source/base%20category%20data%20source.dart';
import 'package:hhhhhhhh/features/home%20feature/data/model/category%20model.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20categoies%20repository.dart';

class CategoryRepository extends BaseCategoriesRepository{
  final BaseCategoryDataSource baseCategoryDataSource;

  CategoryRepository(this.baseCategoryDataSource);
  @override
  Future<Either<Exception, Category>> getCategory() async{
   CategoryModel data = await baseCategoryDataSource.getCategory();
   try{
   

    return Right(data);
   }
   on ServerException catch(e){
    
    return Left(e);
   }
  }

}