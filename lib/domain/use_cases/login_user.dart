import 'package:crm/domain/repository/login_repository.dart';
import 'package:either_dart/either.dart';

import '../../data/failure.dart';
import '../../data/model/login_model.dart';

class LoginUser {
  final LoginRepository loginRepository;

  LoginUser({required this.loginRepository});

  Future<Either<Failure, int>> loginUser(LoginModel user) {
    return loginRepository.login(user);
  }
}
