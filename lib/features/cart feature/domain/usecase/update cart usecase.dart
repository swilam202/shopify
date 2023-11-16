import 'package:dartz/dartz.dart';

import '../entites/update cart.dart';
import '../repository/base cart repoistory.dart';

class UpdateCartUsecase{
    BaseCartRepository baseCartRepository;
  UpdateCartUsecase(this.baseCartRepository);
  Future<Either<Exception, UpdateCart>> excute(int quantity,int id)async{
    return await baseCartRepository.updateCart( quantity, id);
  }
}