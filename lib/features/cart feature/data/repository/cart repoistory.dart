import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/data%20source/base%20cart%20data%20source.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/model/add%20remove%20cart%20model.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/model/cart%20model.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/add%20remove%20cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/update%20cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';

import '../model/update cart model.dart';

class CartRepository extends BaseCartRepository {
  BaseCartDataSource baseCartDataSource;
  CartRepository(this.baseCartDataSource);

  @override
  Future<Either<Exception, AddRemoveCart>> postAddRemoveCart(
      int productId) async {
    AddRemoveCartModel addRemoveCart =
        await baseCartDataSource.postAddRemoveCart(productId);
    try {
      return Right(addRemoveCart);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Cart>> getCart() async{
    CartModel cartModel =  await baseCartDataSource.getCart();

    try {
      return Right(cartModel);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, UpdateCart>> updateCart(int quantiny) async {
    var updateCartModel =
        await baseCartDataSource.updateCart(quantiny);
    try {
      return Right(updateCartModel);
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
