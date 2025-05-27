import 'package:flutter/material.dart';
import 'package:zive/utils/theme/theme.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ZiveTheme.lightTheme,
      darkTheme: ZiveTheme.darkTheme,
    );
  }
}