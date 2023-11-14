import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/use%20cases/post%20register%20usecase.dart';

import '../../../data/data source/base auth data source.dart';
import 'signup state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitialState());

  signupFunction({
    required String email,
    required String password,
    required String image,
    required String name,
    required String phone,
  }) async {
    emit(SignupLoadingState());

    PostRegisterUsecase postRegisterUsecase = sl.get<PostRegisterUsecase>();

    Either<Exception, Register> registerData = await postRegisterUsecase.excute(
      name: name,
      phone: phone,
      email: email,
      password: password,
      image: image,
    );

    registerData.fold((l) => emit(SignupFailureState(l.toString())),
        (r) => emit(SignupSuccessState(r)));
  }
}
