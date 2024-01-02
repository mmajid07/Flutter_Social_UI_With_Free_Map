import 'package:flutter/material.dart';
import 'package:test_app/Config/App_Route.dart';
import 'package:test_app/Screens/Edit_Profile_Page.dart';
import 'package:test_app/Screens/LoginPage.dart';
import 'package:test_app/Screens/Main_Page.dart';
import 'package:test_app/Screens/Test_Page.dart';
import 'package:test_app/Style/App_Colors.dart';

import 'Screens/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         fontFamily: 'Urbanist',
         scaffoldBackgroundColor: AppColors.background,
         brightness: Brightness.dark,
      ),
      //home: const  TestPage(),
      initialRoute: AppRoute.login,

      routes:AppRoute.Pages,
    );
  }
}

 
 