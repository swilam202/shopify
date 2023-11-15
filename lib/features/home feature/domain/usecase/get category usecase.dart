import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20categoies%20repository.dart';

import '../entites/category.dart';

class GetCategoryUsecase {
  final BaseCategoriesRepository baseCategoriesRepository;

  GetCategoryUsecase(this.baseCategoriesRepository);

  Future<Either<Exception, Category>> excute() async {
  
   
    return await baseCategoriesRepository.getCategory();
  }
}
