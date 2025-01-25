import 'package:ecommerce/features/authentication/screens/login/login.dart';
import  'package:flutter/material.dart';
import 'package:ecommerce/utils/theme/theme.dart';

/// -- Use this Class to setup themes, initial Bindings, any animation and much
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
  
}
