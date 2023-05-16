import 'package:crm/data/data_resource/firebase_data_resource.dart';
import 'package:crm/data/failure.dart';
import 'package:crm/data/model/register_model.dart';
import 'package:either_dart/src/either.dart';

import '../../domain/repository/register_repository.dart';

class RegisterRepositoryImp extends RegisterRepository {
  final FirebaseDataResource firebaseDataResource;

  RegisterRepositoryImp({required this.firebaseDataResource});

  @override
  Future<Either<Failure, int>> registraation(
      RegisterModel registerModel) async {
    var promise = await firebaseDataResource.initializeFirebase(
        "register", "post", registerModel.toJson());
    print(promise);

    if (true) {
      return const Right(1);
    } else {
      return const Left(ServerFailure(""));
    }
  }
}
