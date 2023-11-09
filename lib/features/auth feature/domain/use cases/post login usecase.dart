import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class PostLoginUsecase{
  final BaseAuthRepository baseAuthRepository;

  PostLoginUsecase(this.baseAuthRepository);

  Future<Either<Exception,Login>> excute()async{
    return await baseAuthRepository.postLogin();
  }
}