import 'package:bloc/bloc.dart';
import 'package:crm/presntaion/bloc/registration_event.dart';
import 'package:crm/presntaion/bloc/registration_state.dart';

import '../../domain/use_cases/register_user.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegisterUser _registerUser;

  RegistrationBloc(this._registerUser) : super(RegistrationEmpty()) {
    on<OnReloadingChanged>(
      (event, emit) async {
        emit(RegistrationLoading());
        final result = await _registerUser.registerUser(event.user);

        result.fold((failure) => emit(RegistrationError(failure.message)),
            (right) => emit(RegistrationSuccess(right)));
      },
    );
  }
}
