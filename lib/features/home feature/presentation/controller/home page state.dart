import '../../domain/entites/category.dart';

abstract class HomePageState {}

class HomePageLoadingState extends HomePageState {}
class HomePageInitialState extends HomePageState {}

class HomePageFailureState extends HomePageState {
  final String errorMessage;
  HomePageFailureState(this.errorMessage);
}

class HomePageSuccessState extends HomePageState {
  final Category category;

  HomePageSuccessState(this.category);
}
