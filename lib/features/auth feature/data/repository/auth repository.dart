import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/data%20source/base%20auth%20data%20source.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/change%20password%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/login%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/logout%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/register%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/change%20password.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';

class AuthRepoitory extends BaseAuthRepository {
  BaseAuthDataSource baseAuthDataSource;
  AuthRepoitory(this.baseAuthDataSource);

  @override
  Future<Either<Exception, ChangePassword>> postChangePassword({
    required String currentPassword,
    required String newPassword,
    required String token,
  }) async {
    ChangePasswordModel data = await baseAuthDataSource.postChangePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
      token: token,
    );
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Login>> postLogin({
    required String email,
    required String password,
  }) async {
    LoginModel data = await baseAuthDataSource.postLogin(
      email: email,
      password: password,
    );
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Logout>> postLogout({required String token}) async {
    LogoutModel data = await baseAuthDataSource.postLogout(token: token);
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Register>> postRegiter({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String image,
  }) async {
    RegisterModel data = await baseAuthDataSource.postRegister(
      name: name,
      phone: phone,
      email: email,
      password: password,
      image: image,
    );
    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
