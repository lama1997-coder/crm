import 'package:crm/domain/repository/register_repository.dart';
import 'package:either_dart/either.dart';

import '../../data/failure.dart';
import '../../data/model/forms_model.dart';

class RegisterUser {
  final RegisterRepository registerRepository;

  RegisterUser({required this.registerRepository});

  Future<Either<Failure, int>> registerUser(List<FormsModel> registerModel) {
    return registerRepository.registraation(registerModel);
  }
}
