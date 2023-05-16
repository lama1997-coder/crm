part of 'registration_import.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  RegistrationData registerData = new RegistrationData();

  @override
  void initState() {
    context.read<RegistrationBloc>().add(OnReloadingChanged(
        user: RegisterModel(
            userName: 'lama',
            fullName: 'yousef',
            email: 'lamayoused',
            phoneNumber: '5555',
            moreInfo: [])));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [

            DefaultText(title: 'Write your information ',),
            ListView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
                itemCount: registerData.forms.length,
                itemBuilder: (context, index) {
                  return DefaultFormField(
                    hintText: registerData.forms[index].hintText,
                  );
                }),


          ],
        ),
      ),
    );
  }
}
