import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/add%20remove%20cart.dart';

abstract class BaseCartRepository {
  Future<Either<Exception, AddRemoveCart>> postAddRemoveCart(String productId);
}
