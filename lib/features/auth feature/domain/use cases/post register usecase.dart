import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class PostRegisterUsecase{
  final BaseAuthRepository baseAuthRepository;

  PostRegisterUsecase(this.baseAuthRepository);

  Future<Either<Exception,Register>> excute({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String image,
  })async{
    return await baseAuthRepository.postRegiter(name: name, phone: phone, email: email, password: password, image: image);
  }
}