import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20state.dart';

class HomePageLoadingState extends BasePageState{}
class HomePageFailureState extends BasePageState{
  final String errorMessage;
  HomePageFailureState(this.errorMessage);
}
class HomePageSuccessState extends BasePageState{}