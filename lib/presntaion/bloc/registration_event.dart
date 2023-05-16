import '../../data/model/register_model.dart';

abstract class RegistrationEvent {
  const RegistrationEvent();

  List<Object?> get props => [];
}

class OnReloadingChanged extends RegistrationEvent {
  final RegisterModel user;

  OnReloadingChanged({required this.user});

  @override
  List<Object?> get props => [];
}
