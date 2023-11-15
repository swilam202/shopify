import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category.dart';

abstract class BaseCategoriesRepository{
   Future<Either<Exception,Category>> getCategory();
}