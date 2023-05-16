import 'package:crm/presntaion/bloc/registration_bloc.dart';
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

  //repository

  locator.registerLazySingleton<RegisterRepository>(
      () => RegisterRepositoryImp(firebaseDataResource: locator()));
  locator.registerLazySingleton<FirebaseDataResource>(
      () => FirebaseDataResourceImpl(locator()));
  locator.registerLazySingleton(() => FirebaseStorage.instance.ref());
}
