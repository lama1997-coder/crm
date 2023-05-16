part of 'registration_import.dart';

class RegistrationData {
  GenericBloc<List<FormsModel>> formBloc = GenericBloc([
    FormsModel("User Name", TextEditingController()),
    FormsModel(
      "Full Name",
      TextEditingController(),
    ),
    FormsModel("Email", TextEditingController()),
    FormsModel("Phone Number", TextEditingController()),
    FormsModel("Password", TextEditingController())
  ]);

  addForm(RegistrationData registrationData) {
    registrationData.formBloc.state.data
        .add(FormsModel("User Name", TextEditingController()));
  }
}
