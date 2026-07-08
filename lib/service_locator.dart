

import 'package:ecommercelocal/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommercelocal/data/auth/source/auth_firebase_service.dart';
import 'package:ecommercelocal/domain/auth/repository/auth.dart';
import 'package:ecommercelocal/domain/auth/usecases/get_ages.dart';
import 'package:ecommercelocal/domain/auth/usecases/siginup.dart';
import 'package:ecommercelocal/domain/auth/usecases/signin.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // Services
  
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );


  // Repositories

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<SigninUseCase>(SigninUseCase());


  // Usecases

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<GetAgesUseCase>(
    GetAgesUseCase()
  );
}
