import '../../data/model/forms_model.dart';

abstract class RegistrationEvent {
  const RegistrationEvent();

  List<Object?> get props => [];
}

class OnReloadingChanged extends RegistrationEvent {
  final List<FormsModel> user;

  OnReloadingChanged({required this.user});

  @override
  List<Object?> get props => [];
}
