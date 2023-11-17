import 'package:hhhhhhhh/features/details%20feature/domain/repository/base%20product%20details%20repository.dart';
import 'package:dartz/dartz.dart';
import '../entites/product details.dart';

class GetProductDetailsUseCase{
  BaseProductDetailsRepository baseProductDetailsRepository;
  GetProductDetailsUseCase(this.baseProductDetailsRepository);
  Future<Either<Exception,ProductDetails>> execute(int id)async{
    return await baseProductDetailsRepository.getProductDetails(id);
  }

}