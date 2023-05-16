import 'dart:developer';

import 'package:crm/data/failure.dart';
import 'package:either_dart/either.dart';
import '../../domain/repository/login_repository.dart';
import '../data_resource/firebase_data_resource.dart';
import '../model/login_model.dart';

class LoginRepositoryImpl extends LoginRepository {
  final FirebaseDataResource remoteDataResource;

  LoginRepositoryImpl({required this.remoteDataResource});

  @override
  Future<Either<Failure, int>> login(LoginModel user) async {
    var promise = await remoteDataResource.initializeFirebase("register");

 await promise
        .where("user_name", isEqualTo: user.username.text)
        .where("password", isEqualTo: user.password.text)
        .get()
        .then(
      (querySnapshot) {
        log("Successfully completed");
        if (querySnapshot.docs.length == 0) {
          return const Left(UserNotFound("User not found"));
        }
        for (var docSnapshot in querySnapshot.docs) {
          log('pr${docSnapshot.id} => ${docSnapshot.data()}');
        }
      },
      onError: (e) => log("Error completing: $e"),
    );
    return const Right(1);
  }
}
