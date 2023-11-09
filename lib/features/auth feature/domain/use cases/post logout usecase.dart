import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class PostLogoutUsecase{
  final BaseAuthRepository baseAuthRepository;

  PostLogoutUsecase(this.baseAuthRepository);

  Future<Either<Exception,Logout>> excute({
    required String token,
  })async{
    return await baseAuthRepository.postLogout(token: token);
  }
}