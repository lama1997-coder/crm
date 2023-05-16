import 'package:flutter/material.dart';

import '../../../configration/themedata.dart';

class Style {
  static ElevatedButtonThemeData defaultButton = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(color: ThemeDataProvider.backgroundLightColor)),
      backgroundColor:
          MaterialStateProperty.all(ThemeDataProvider.primaryLightThemeColor),
      minimumSize: MaterialStateProperty.all(
          Size(WidgetsBinding.instance.window.physicalSize.width, 40)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side:const BorderSide(
            color: ThemeDataProvider.primaryLightThemeColor,
          ),
        ),
      ),
    ),
  );

  static ButtonStyle cancelButton = ButtonStyle(
    textStyle: MaterialStateProperty.all(const TextStyle(color: ThemeDataProvider.backgroundLightColor)),
    backgroundColor:
    MaterialStateProperty.all(ThemeDataProvider.secButtonColor),
    minimumSize: MaterialStateProperty.all(
        Size(WidgetsBinding.instance.window.physicalSize.width, 40)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side:const BorderSide(
          color: ThemeDataProvider.secButtonColor,
        ),
      ),
    ),
  );
}
