/*import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base feature/presentation/controller/base page state.dart';
import 'search page state.dart';

class SearchPageCubit extends Cubit<BasePageState> {
  SearchPageCubit():super(SearchPageInitialState());

  void loadPage(){
    emit(SearchPageLoadingState());
    try{
      SearchPageSuccessState();

    } catch(e){
      emit(SearchPageFailureState());
    }
  }
}*/