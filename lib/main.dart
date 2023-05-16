import 'package:crm/presntaion/bloc/registration_bloc.dart';
import 'package:crm/presntaion/pages/registration/registration_import.dart';
import 'package:crm/presntaion/pages/splash/splash_import.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'configration/themedata.dart';
import 'firebase_options.dart';
import 'injection.dart' as di;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 // await Firebase.initializeApp();
  di.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[
        BlocProvider(create: (_)=>di.locator<RegistrationBloc>(),)
      ],
      child: MaterialApp(
        themeMode:true ? ThemeMode.light : ThemeMode.light,
        darkTheme: ThemeDataProvider.darkTheme,
        theme: ThemeDataProvider.lightTheme,
        home:  const Registration(),
      ),
    );
  }
}