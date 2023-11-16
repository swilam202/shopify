import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';

import '../entites/cart.dart';

class GetCartUsecase {
  BaseCartRepository baseCartRepository;
  GetCartUsecase(this.baseCartRepository);
  Future<Either<Exception, Cart>> excute() async {
    return await baseCartRepository.getCart();
  }
}
