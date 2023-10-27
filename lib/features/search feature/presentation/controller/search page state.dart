import '../../../base feature/presentation/controller/base page state.dart';

class SearchPageLoadingState extends BasePageState{}
class SearchPageFailureState extends BasePageState{
  final String errorMessage;
  SearchPageFailureState(this.errorMessage);
}
class SearchPageSuccessState extends BasePageState{}