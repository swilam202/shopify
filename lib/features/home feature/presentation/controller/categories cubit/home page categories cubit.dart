import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/usecase/get%20category%20usecase.dart';

import '../../../domain/entites/category.dart';
import 'home page categories state.dart';

class HomePageCategoriesCubit extends Cubit<HomePageCategoriesState> {
  HomePageCategoriesCubit() : super(HomePageCategoriesInitialState());

  void loadPage() async {
    emit(HomePageCategoriesLoadingState());
    Either<Exception, Category> categoryData =
        await sl.get<GetCategoryUsecase>().excute();

    categoryData.fold(
      (l) => emit(HomePageCategoriesFailureState(l.toString())),
      (r) => emit(HomePageCategoriesSuccessState(r)),
    );

   // Either<Exception, List<Trending>>
  }

}
