import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/add%20remove%20cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/address.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/update%20cart.dart';

abstract class BaseCartRepository {
  Future<Either<Exception, AddRemoveCart>> postAddRemoveCart(int productId);
  Future<Either<Exception, Cart>> getCart();
  Future<Either<Exception, Address>> getAddress();
  Future<Either<Exception, UpdateCart>> updateCart(int quantity,int id);
}
