import 'package:dartz/dartz.dart';
import 'package:ecommercelocal/core/usecase/usecase.dart';
import 'package:ecommercelocal/data/auth/models/user_creation_req.dart';
import 'package:ecommercelocal/domain/auth/repository/auth.dart';
import 'package:ecommercelocal/service_locator.dart';

class SignupUseCase implements UseCase<Either,UserCreationReq> {


  @override
  Future<Either> call({UserCreationReq ? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }

  
}