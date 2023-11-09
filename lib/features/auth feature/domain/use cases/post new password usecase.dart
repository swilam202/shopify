import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/change%20password.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class PostNewPasswordUsecase{
  final BaseAuthRepository baseAuthRepository;

  PostNewPasswordUsecase(this.baseAuthRepository);

  Future<Either<Exception,ChangePassword>> excute()async{
    return await baseAuthRepository.postChangePassword();
  }
}