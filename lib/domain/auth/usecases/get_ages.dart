import 'package:dartz/dartz.dart';
import 'package:ecommercelocal/core/usecase/usecase.dart';
import 'package:ecommercelocal/domain/auth/repository/auth.dart';
import 'package:ecommercelocal/service_locator.dart';

class GetAgesUseCase implements UseCase<Either,dynamic> {


  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }

  
}