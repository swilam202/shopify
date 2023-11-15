

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/home%20feature/data/data%20source/base%20home%20page%20data%20source.dart';
import 'package:hhhhhhhh/features/home%20feature/data/repository/category%20repository.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20home%20page%20repository.dart';

import '../../../../../core/services/service locator.dart';
import '../../../domain/entites/trending.dart';
import '../../../domain/usecase/get trending usecase.dart';
import 'trending state.dart';


class HomePageTrendingCubit extends Cubit<HomePageTrendingState> {
  HomePageTrendingCubit() : super(HomePageTrendingInitialState());

  void loadPage() async {
    BaseHomePageDataSource baseHomePageDataSource = HomePageDataSource();
    BaseHomePageRepository baseHomePageRepository = HomePageRepository(baseHomePageDataSource);
    emit(HomePageTrendingLoadingState());
    Either<Exception, List<Trending>> trending =
        await GetTrendingUsecase(baseHomePageRepository).excute();

    trending.fold(
      (l) => emit(HomePageTrendingFailureState(l.toString())),
      (r) => emit(HomePageTrendingSuccessState(r)),
    );

  }

}
