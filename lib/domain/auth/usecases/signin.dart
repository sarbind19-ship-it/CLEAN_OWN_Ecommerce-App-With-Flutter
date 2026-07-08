import 'package:dartz/dartz.dart';
import 'package:ecommercelocal/core/usecase/usecase.dart';
import 'package:ecommercelocal/data/auth/models/user_signin_req.dart';
import 'package:ecommercelocal/domain/auth/repository/auth.dart';
import 'package:ecommercelocal/service_locator.dart';
class SigninUseCase implements UseCase<Either,UserSigninReq> {

  @override
  Future<Either> call({UserSigninReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}