import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';

import '../entites/add remove cart.dart';

class AddRemoveCartUseCase {
  BaseCartRepository baseCartRepository;
  AddRemoveCartUseCase(this.baseCartRepository);
  Future<Either<Exception, AddRemoveCart>> excute(int productId) async {
    return await baseCartRepository.postAddRemoveCart(productId);
  }
}
