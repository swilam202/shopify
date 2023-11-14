import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/repository/auth%20repository.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/repoitory/base%20auth%20repoistory.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/use%20cases/post%20login%20usecase.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20state.dart';

import '../../../data/data source/base auth data source.dart';
import '../../../domain/entites/login.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  loginFunction({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());

    PostLoginUsecase postLoginUsecase = sl.get<PostLoginUsecase>();
      Either<Exception, Login> loginData = await postLoginUsecase.excute(
        email: email,
        password: password,
      );
      loginData.fold((l) => emit(LoginFailureState(l.toString())), (r) => emit(LoginSuccessState(r)));
  }


}
