

import 'package:get_it/get_it.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/use%20cases/post%20register%20usecase.dart';

import '../../features/auth feature/data/data source/base auth data source.dart';
import '../../features/auth feature/data/repository/auth repository.dart';
import '../../features/auth feature/domain/repoitory/base auth repoistory.dart';
import '../../features/auth feature/domain/use cases/post login usecase.dart';
import '../../features/home feature/data/data source/base home page data source.dart';
import '../../features/home feature/data/repository/category repository.dart';
import '../../features/home feature/domain/repository/base home page repository.dart';
import '../../features/home feature/domain/usecase/get category usecase.dart';

  final GetIt sl = GetIt.instance;

class ServiceLocator{


  void setup(){
    sl.registerLazySingleton<BaseAuthDataSource>(() => AuthDataSource());
    sl.registerLazySingleton<BaseHomePageDataSource>(() => HomePageDataSource());

    sl.registerLazySingleton<BaseAuthRepository>(() => AuthRepoitory(sl()));
    sl.registerLazySingleton<BaseHomePageRepository>(() => HomePageRepository(sl()));

    sl.registerLazySingleton<PostLoginUsecase>(() => PostLoginUsecase(sl()));
    sl.registerLazySingleton<PostRegisterUsecase>(() => PostRegisterUsecase(sl()));
    sl.registerLazySingleton<GetCategoryUsecase>(() => GetCategoryUsecase(sl()));


  }
}