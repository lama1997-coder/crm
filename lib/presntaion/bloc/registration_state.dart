abstract class RegistrationState {
  List<Object?> get props => [];
}

class RegistrationEmpty extends RegistrationState {}

class RegistrationLoading extends RegistrationState {}

class RegistrationError extends RegistrationState {
  final String message;

  RegistrationError(this.message);

  @override
  List<Object?> get props => [message];
}

class RegistrationSuccess extends RegistrationState {
  final int status;

  RegistrationSuccess(this.status);

  @override
  List<Object?> get props => [status];
}
