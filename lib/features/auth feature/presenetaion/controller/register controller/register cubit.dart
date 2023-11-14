import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/use%20cases/post%20register%20usecase.dart';

import '../../../data/data source/base auth data source.dart';
import 'register state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());

  registerFunction({
    required String email,
    required String password,
    required String image,
    required String name,
    required String phone,
  }) async {
    emit(RegisterLoadingState());

    PostRegisterUsecase postRegisterUsecase = sl.get<PostRegisterUsecase>();

    Either<Exception, Register> registerData = await postRegisterUsecase.excute(
      name: name,
      phone: phone,
      email: email,
      password: password,
      image: image,
    );

    registerData.fold((l) => emit(RegisterFailureState(l.toString())),
        (r) => emit(RegisterSuccessState(r)));
  }
}
