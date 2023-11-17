import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/repository/base%20search%20repository.dart';

import '../entites/category products.dart';

class PostSearchUseCase{
  BaseSearchRepository baseSearchRepository;
  PostSearchUseCase(this.baseSearchRepository);
  Future<Either<Exception,List<Products>?>> execute(String keyword)async{
    return await baseSearchRepository.postSearch(keyword);
  }
}