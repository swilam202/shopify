import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/home%20feature/data/data%20source/base%20category%20data%20source.dart';
import 'package:hhhhhhhh/features/home%20feature/data/model/category%20model.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20home%20page%20repository.dart';

class HomePageRepository extends BaseHomePageRepository{
  final BaseHomePageDataSource baseHomePageDataSource;

  HomePageRepository(this.baseHomePageDataSource);
  @override
  Future<Either<Exception, Category>> getCategory() async{
   CategoryModel data = await baseHomePageDataSource.getCategory();
   try{
   

    return Right(data);
   }
   on ServerException catch(e){
    
    return Left(e);
   }
  }

}