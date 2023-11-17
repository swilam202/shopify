import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/details%20feature/domain/entites/product%20details.dart';

abstract class BaseProductDetailsRepository{
  Future<Either<Exception,ProductDetails>> getProductDetails(int id);
}