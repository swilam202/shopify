import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/data%20source/base%20cart%20data%20source.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/add%20remove%20cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';

class CartRepository extends BaseCartRepository {
  BaseCartDataSource baseCartDataSource;
  CartRepository(this.baseCartDataSource);

  @override
  Future<Either<Exception, AddRemoveCart>> postAddRemoveCart(
      String productId) async {
    AddRemoveCart addRemoveCart =
        await baseCartDataSource.postAddRemoveCart(productId);
    try {
      return Right(addRemoveCart);
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
