import 'package:crm/data/failure.dart';
import 'package:either_dart/either.dart';

import '../../data/model/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, int>> login(LoginModel user);
}
