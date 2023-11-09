import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class PostRegisterUsecase{
  final BaseAuthRepository baseAuthRepository;

  PostRegisterUsecase(this.baseAuthRepository);

  Future<Either<Exception,Register>> excute()async{
    return await baseAuthRepository.postRegiter();
  }
}