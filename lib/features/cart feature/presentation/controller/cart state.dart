import '../../../base feature/presentation/controller/base page state.dart';

class CartPageLoadingState extends BasePageState{}
class CartPageFailureState extends BasePageState{
  final String errorMessage;
  CartPageFailureState(this.errorMessage);
}
class CartPageSuccessState extends BasePageState{}