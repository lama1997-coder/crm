


import 'package:crm/domain/repository/register_repository.dart';
import 'package:either_dart/either.dart';

import '../../data/failure.dart';
import '../../data/model/register_model.dart';

class RegisterUser{
  final RegisterRepository registerRepository;
  RegisterUser({required this.registerRepository});
  Future<Either<Failure,int>> registerUser(RegisterModel registerModel){
    return registerRepository.registraation(registerModel);
  }

}