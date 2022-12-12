import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ahmet_keskin/main_screen.dart';
import 'package:ahmet_keskin/utils/customColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: CustomColors.appbarBackgroundColor,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light),
          scaffoldBackgroundColor: CustomColors.scaffolBackgroundColor),
      home: HomeScreen(),
    );

    
  }
}
