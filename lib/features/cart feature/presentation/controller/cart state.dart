import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart.dart';

abstract class CartPageState {}

class CartPageInitialState extends CartPageState {}

class CartPageLoadingState extends CartPageState {}

class CartPageFailureState extends CartPageState {
  final String errorMessage;
  CartPageFailureState(this.errorMessage);
}

class CartPageSuccessState extends CartPageState {
  Cart cart;
  CartPageSuccessState(this.cart);
}
