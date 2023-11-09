import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/change%20password.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

abstract class BaseAuthRepository{
  Future<Either<Exception,Login>> postLogin();
  Future<Either<Exception,Register>> postRegiter();
  Future<Either<Exception,Logout>> postLogout();
  Future<Either<Exception,ChangePassword>> postChangePassword();
}