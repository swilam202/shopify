import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20cubit.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20state.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20state.dart';
import 'package:hhhhhhhh/features/search%20feature/presentation/controller/search%20page%20state.dart';
import 'package:hhhhhhhh/features/search%20feature/presentation/pages/search%20page.dart';

import '../../../cart feature/presentation/controller/cart state.dart';
import '../../../cart feature/presentation/pages/cart page.dart';
import '../../../home feature/presentation/pages/home page.dart';





class BasePage extends StatelessWidget {
const BasePage({super.key});

 // int index = 0;
  @override
  Widget build(BuildContext context) {

  

    return Scaffold(
      body: BlocBuilder<BasePageCubit,BasePageState>(
        builder: (context, state) {
          if(state is HomePageSuccessState){
            return HomePage();
          }
          else if(state is SearchPageSuccessState){
            return SearchPage();
          }
          else if(state is CartPageSuccessState){
            return CartPage();
          }
          else if(state is HomePageFailureState){

            return Center(child: Text(state.errorMessage));
          }
          else if(state is SearchPageFailureState){

            return Center(child: Text(state.errorMessage));
          }
          else if(state is CartPageFailureState){

            return Center(child: Text(state.errorMessage));
          }
          else{
            
            return Center(child: CircularProgressIndicator());
          }
          
        },
      ),
      bottomNavigationBar: BlocBuilder<BasePageCubit,BasePageState>(
        builder: (context,state){
          return BottomNavigationBar(
        currentIndex: BlocProvider.of<BasePageCubit>(context).index,
        onTap: (value) => BlocProvider.of<BasePageCubit>(context).updateIndex(value,context),
        selectedItemColor: StyleColor.orangeColor,
        unselectedItemColor: StyleColor.extraDarkColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      );
 
        },
      ),
         );
  }
}


