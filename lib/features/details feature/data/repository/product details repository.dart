import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/features/details%20feature/data/data%20source/product%20details%20data%20source.dart';
import 'package:hhhhhhhh/features/details%20feature/data/model/product%20detials%20model.dart';
import 'package:hhhhhhhh/features/details%20feature/domain/entites/product%20details.dart';
import 'package:hhhhhhhh/features/details%20feature/domain/repository/base%20product%20details%20repository.dart';

import '../../../../core/services/api/server exception.dart';

class ProductDetailsRepository extends BaseProductDetailsRepository {
  BaseProductDetailsDataSource baseProductDetailsDataSource;

  ProductDetailsRepository(this.baseProductDetailsDataSource);

  @override
  Future<Either<Exception, ProductDetails>> getProductDetails(int id) async {
    ProductDetailsModel data =
        await baseProductDetailsDataSource.getProductDetails(id);

    try {
      return Right(data);
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
