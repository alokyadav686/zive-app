import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zive/features/authentication/screens/signIn/sign_in.dart';
import 'package:zive/utils/theme/theme.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ZiveTheme.lightTheme,
      darkTheme: ZiveTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
