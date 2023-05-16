
import 'package:crm/data/failure.dart';
import 'package:either_dart/either.dart';
import '../../data/model/forms_model.dart';

abstract class RegisterRepository {
  Future<Either<Failure,int>>registraation( List<FormsModel> registerModel);
}