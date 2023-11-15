import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20state.dart';

import '../../../cart feature/presentation/controller/cart state.dart';
import '../../../search feature/presentation/controller/search page cubit.dart';
import '../../../search feature/presentation/controller/search page state.dart';
import 'base page state.dart';
/*
class BasePageCubit extends Cubit<BasePageState> {
  BasePageCubit() : super(BasePageInitialState());
  int index = 0;
  void loadPages(BuildContext context) {
    if (index == 0) {
      emit(HomePageLoadingState());
      try {
        emit(HomePageSuccessState());
      } catch (e) {
        emit(HomePageFailureState(e.toString()));
      }
    } else if (index == 1) {
      emit(SearchPageLoadingState());
      try {
        emit(SearchPageSuccessState());
      } catch (e) {
        emit(SearchPageFailureState(e.toString()));
      }
    } else if (index == 2) {
      emit(CartPageLoadingState());
      try {
        emit(CartPageSuccessState());
      } catch (e) {
        emit(CartPageFailureState(e.toString()));
      }
    }
  }

  void updateIndex(int value, BuildContext context) {
    index = value;
    emit(BasePageUpdateState());
    loadPages(context);
  }
}
*/