import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/address.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';

class GetAddressUseCase {
  final BaseCartRepository baseCartRepository;

  GetAddressUseCase(this.baseCartRepository);
  Future<Either<Exception,Address>> execute()async{
    return await baseCartRepository.getAddress();
  }
}