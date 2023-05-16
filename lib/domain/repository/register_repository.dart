
import 'package:crm/data/failure.dart';
import 'package:crm/data/model/register_model.dart';
import 'package:either_dart/either.dart';

abstract class RegisterRepository {
  Future<Either<Failure,int>>registraation(RegisterModel registerModel);
}