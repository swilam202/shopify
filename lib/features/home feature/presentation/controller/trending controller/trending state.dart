import 'package:hhhhhhhh/features/home%20feature/domain/entites/trending.dart';

abstract class HomePageTrendingState {}

class HomePageTrendingLoadingState extends HomePageTrendingState {}

class HomePageTrendingInitialState extends HomePageTrendingState {}

class HomePageTrendingFailureState extends HomePageTrendingState {
  final String errorMessage;
  HomePageTrendingFailureState(this.errorMessage);
}

class HomePageTrendingSuccessState extends HomePageTrendingState {
  final List<Trending> trending;

  HomePageTrendingSuccessState(this.trending);
}