import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/trending.dart';

abstract class BaseHomePageRepository{
   Future<Either<Exception,Category>> getCategory();
   Future<Either<Exception,List<Trending>>> getTrending();

}

