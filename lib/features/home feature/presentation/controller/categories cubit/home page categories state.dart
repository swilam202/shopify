
import '../../../domain/entites/category.dart';

abstract class HomePageCategoriesState {}

class HomePageCategoriesLoadingState extends HomePageCategoriesState {}
class HomePageCategoriesInitialState extends HomePageCategoriesState {}

class HomePageCategoriesFailureState extends HomePageCategoriesState {
  final String errorMessage;
  HomePageCategoriesFailureState(this.errorMessage);
}

class HomePageCategoriesSuccessState extends HomePageCategoriesState {
  final Category category;

  HomePageCategoriesSuccessState(this.category);
}
