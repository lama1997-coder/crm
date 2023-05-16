import 'dart:developer';

import 'package:crm/data/data_resource/firebase_data_resource.dart';
import 'package:crm/data/failure.dart';
import 'package:either_dart/either.dart';

import '../../domain/repository/register_repository.dart';
import '../model/forms_model.dart';

class RegisterRepositoryImp extends RegisterRepository {
  final FirebaseDataResource firebaseDataResource;

  RegisterRepositoryImp({required this.firebaseDataResource});

  @override
  Future<Either<Failure, int>> registraation(
      List<FormsModel> registerModel) async {
    var dataLis=       FormsModel.iterateJson(registerModel);

    var promise = await firebaseDataResource.initializeFirebase(
        "register");

    promise
        .add(dataLis)
        .then((value) => log("User Added$value"))
        .catchError((error) => log("Failed to add user: $error"));
    log(promise);

    if (true) {
      return const Right(1);
    } else {
      return const Left(ServerFailure(""));
    }
  }
}
