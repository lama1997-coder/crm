import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presntaion/pages/common/styles.dart';

class ThemeDataProvider {
  // static const mainAppDarkColor = Color.fromARGB(255, 39, 153, 144);
  static const primaryDarkThemeColor = Color(0xFFA44AFF);

  static const primaryDarkCardThemeColor = Color(0xFFDF98FA);
  static const primaryDarkCardEndThemeColor = Color(0xFF9055FF);
  static const textDarkThemeColor = Colors.white;

  static const primaryDarkThemeSecTextColor = Color(0xFF091945);
  static const primaryDarkThemeButtonColor = Color(0xFFF9B091);
  static const textDarksecThemeColor = Color(0xFFA19CC5);

  static const backgroundDarkColor = Color(0xFF040C23);

  static const imageBackgroundLight = "assets/images/blight.png";
  static const imageBackgroundDark = "assets/images/bdark.png";
  static const imageBackgroundLightWeb = "assets/images/blight-web.png";
  static const imageBackgroundDarkWeb = "assets/images/bdark-web.png";

  static const mainAppColor = Color(0xFF0ec683);
  static const textLightThemeColor = Color.fromARGB(255, 58, 58, 58);
  static const backgroundLightColor = Color(0xffF2F2F2);
  static const primaryLightThemeColor = Color(0xff69D0CA);
  static const secButtonColor = Color(0xffF27E60);

  static final lightTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      filled: true,
      fillColor: Colors.white70,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        borderSide: BorderSide(color: ThemeDataProvider.textDarksecThemeColor, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.red),
      ),


    ),
    textTheme: TextTheme(
        displaySmall: GoogleFonts.poppins(
          color: ThemeDataProvider.textDarksecThemeColor,
          fontSize: 10,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
        ),
        displayLarge: GoogleFonts.poppins(
          color: ThemeDataProvider.textLightThemeColor,
          fontSize: 25,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.poppins(
          color: ThemeDataProvider.textLightThemeColor,
          fontSize: 13,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
        )),
    drawerTheme: DrawerThemeData(
      backgroundColor: backgroundDarkColor,
      scrimColor: textLightThemeColor.withOpacity(0.5),
      elevation: 10,
    ),
    switchTheme: SwitchThemeData(
        splashRadius: 100,
        thumbColor: MaterialStateProperty.all(primaryDarkThemeColor),
        trackColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? backgroundDarkColor
                : null)),
    cardColor: primaryDarkThemeColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryDarkThemeColor,
        unselectedItemColor: textDarksecThemeColor,
        backgroundColor: primaryDarkThemeSecTextColor),
    scaffoldBackgroundColor: backgroundLightColor,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textDarkThemeColor,
        ),
        iconTheme: IconThemeData(color: textDarksecThemeColor)),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white, modalBackgroundColor: Colors.white),
    elevatedButtonTheme: Style.defaultButton
  );

  static final darkTheme = ThemeData(
    textTheme: TextTheme(
        displaySmall: GoogleFonts.poppins(
          color: ThemeDataProvider.textDarksecThemeColor,
          fontSize: 10,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
        ),
        displayLarge: GoogleFonts.poppins(
          color: ThemeDataProvider.textDarkThemeColor,
          fontSize: 25,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.poppins(
          color: ThemeDataProvider.textDarkThemeColor,
          fontSize: 13,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
        )),
    drawerTheme: DrawerThemeData(
      backgroundColor: backgroundDarkColor,
      scrimColor: textLightThemeColor.withOpacity(0.5),
      elevation: 10,
    ),
    switchTheme: SwitchThemeData(
        splashRadius: 100,
        thumbColor: MaterialStateProperty.all(primaryDarkThemeColor),
        trackColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? backgroundDarkColor
                : null)),
    cardColor: primaryDarkThemeColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryDarkThemeColor,
        unselectedItemColor: textDarksecThemeColor,
        backgroundColor: primaryDarkThemeSecTextColor),
    scaffoldBackgroundColor: backgroundDarkColor,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: primaryDarkThemeColor,
      modalBackgroundColor: primaryDarkThemeColor,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: textDarkThemeColor,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: primaryDarkThemeColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle:
            MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.bold)),
        foregroundColor:
            MaterialStateProperty.all(primaryDarkThemeSecTextColor),
        backgroundColor: MaterialStateProperty.all(primaryDarkThemeButtonColor),
        minimumSize: MaterialStateProperty.all(const Size(150, 40)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: const BorderSide(
              color: primaryDarkThemeButtonColor,
            ),
          ),
        ),
      ),
    ),
  );
}
