import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';

abstract class BaseAuthRepository{
  Either<Exception,Login> postLogin();
  Either<Exception,Login> postRegiter();
  Either<Exception,Login> postLogout();
  Either<Exception,Login> postChangePassword();
}