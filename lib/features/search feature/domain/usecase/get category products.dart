import 'package:dartz/dartz.dart';

import '../entites/category products.dart';
import '../repository/base search repository.dart';


class GetCategoryProductsUseCase{
  BaseSearchRepository baseSearchRepository;
  GetCategoryProductsUseCase(this.baseSearchRepository);
  Future<Either<Exception,List<Products>?>> execute(int id)async{
    return await baseSearchRepository.getCategoryProducts(id);
  }
}