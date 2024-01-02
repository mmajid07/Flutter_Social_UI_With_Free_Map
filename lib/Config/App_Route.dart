import 'package:test_app/Screens/Edit_Profile_Page.dart';
import 'package:test_app/Screens/Home_Page.dart';
import 'package:test_app/Screens/LoginPage.dart';
import 'package:test_app/Screens/Main_Page.dart';
import 'package:test_app/Screens/Nearby_Page.dart';

class AppRoute{

  static final Pages = {
        login : (context) => LoginPage(),
        home :(context) => HomePage(),
        main :(context) => MainPage(),
        edit_profile:(context) => EditProfile(),
        nearby:(context) => NearByPage(),

      };

  static const login= '/';
  static const home='/home';
  static const main='/main';
  static const edit_profile='/edit_profile'; 
  static const nearby='/nearby'; 
}