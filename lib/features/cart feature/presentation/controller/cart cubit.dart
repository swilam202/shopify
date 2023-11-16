import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/usecase/get%20cart%20usecase.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/controller/cart%20state.dart';

import '../../../../core/services/service locator.dart';

class CartCubit extends Cubit<CartPageState>{
  CartCubit():super(CartPageInitialState());

   loadData()async{
        emit(CartPageLoadingState());
    Either<Exception, Cart> categoryData =
        await sl.get<GetCartUsecase>().excute();

    categoryData.fold(
      (l) => emit(CartPageFailureState(l.toString())),
      (r) => emit(CartPageSuccessState(r)),
    );
   }
}