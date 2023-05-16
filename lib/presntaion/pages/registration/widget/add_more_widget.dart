


part of 'widget_import.dart';



class AddMoreWidget extends StatelessWidget {
  final RegistrationData registration;
  const AddMoreWidget({Key? key, required this.registration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultText(title: " Add More Info"),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            var editro = TextEditingController();
          registration.formBloc.  state.data.add(FormsModel(editro.text, editro,
                form: FormsModel(
                    editro.text, TextEditingController())));
            registration.formBloc.onUpdateData( registration.formBloc.  state.data);
          },
        )
      ],
    );
  }
}
