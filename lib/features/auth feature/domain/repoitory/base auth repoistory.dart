import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/change%20password.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

abstract class BaseAuthRepository {
  Future<Either<Exception, Login>> postLogin({
    required String email,
    required String password,
  });
  Future<Either<Exception, Register>> postRegiter({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String image,
  });
  Future<Either<Exception, Logout>> postLogout({
    required String token,
  });
  Future<Either<Exception, ChangePassword>> postChangePassword({
    required String currentPassword,
    required String newPassword,
    required String token,
  });
}
