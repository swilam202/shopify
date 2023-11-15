import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/usecase/get%20category%20usecase.dart';

import '../../domain/entites/category.dart';
import 'home page state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitialState());

  void loadPage() async {
    emit(HomePageLoadingState());
    Either<Exception, Category> data =
        await sl.get<GetCategoryUsecase>().excute();

        print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');
        print(data);
    data.fold(
      (l) => emit(HomePageFailureState(l.toString())),
      (r) => emit(HomePageSuccessState(r)),
    );
  }

}
