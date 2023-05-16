import 'package:crm/data/repository/login_repository_imp.dart';
import 'package:crm/domain/repository/login_repository.dart';
import 'package:crm/domain/use_cases/login_user.dart';
import 'package:crm/presntaion/bloc/registration_bloc.dart';
import 'package:crm/presntaion/pages/login/login_import.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

import 'data/data_resource/firebase_data_resource.dart';
import 'data/repository/registration_repository_imp.dart';
import 'domain/repository/register_repository.dart';
import 'domain/use_cases/register_user.dart';

final locator = GetIt.instance;

void init() {
  //bloc
  locator.registerFactory(() => RegistrationBloc(locator()));

  //useCasese

  locator
      .registerLazySingleton(() => RegisterUser(registerRepository: locator()));
  locator.registerFactory(() => LoginUser(loginRepository: locator()));

  //repository

  //data class
  locator.registerLazySingleton(() => LoginData(loginUser: locator()));

  locator.registerLazySingleton<RegisterRepository>(
      () => RegisterRepositoryImp(firebaseDataResource: locator()));
  locator.registerLazySingleton<FirebaseDataResource>(
      () => FirebaseDataResourceImpl(locator()));
  locator.registerLazySingleton(() => FirebaseStorage.instance.ref());

  locator.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(remoteDataResource: locator()));
}
