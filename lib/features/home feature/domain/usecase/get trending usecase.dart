import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20home%20page%20repository.dart';

import '../entites/trending.dart';

class GetTredningUsecase {
  BaseHomePageRepository baseHomePageRepository;
  GetTredningUsecase(this.baseHomePageRepository);
  Future<Either<Exception,Trending>> excute()async{
    return await baseHomePageRepository.getTrending();
  }
}