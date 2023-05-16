part of 'registration_import.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  RegistrationData registerData =  RegistrationData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<FormsModel>>,
        GenericState<List<FormsModel>>>(
      bloc: registerData.formBloc,
      builder: (context, state) {
        var data = state.data;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 10,
              title: DefaultText(
                title: 'Register',
              ),
              leading: Image.asset(Res.splash),
              backgroundColor: ThemeDataProvider.textDarksecThemeColor,
            ),
            body: ListView(
              padding:const EdgeInsets.all(20),
              children: [
                DefaultText(
                  title: 'Write your information ',
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(), // new
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          data[index].form != null
                              ? Expanded(
                                  child: DefaultFormField(
                                    controller: data[index].form!.controller,
                                    hintText: data[index].hintText,
                                  ),
                                )
                              : Container(),
                          Expanded(
                            flex: 2,
                            child: DefaultFormField(
                              controller: data[index].controller,
                              hintText: data[index].hintText,
                            ),
                          ),
                        ],
                      );
                    }),
                AddMoreWidget(
                  registration: registerData,
                ),
                DefaultButton(
                  title: 'Sign In ',
                  onTap: () {
                    var dataLis = FormsModel.iterateJson(state.data);
                    log(dataLis);
                    context
                        .read<RegistrationBloc>()
                        .add(OnReloadingChanged(user: state.data));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
