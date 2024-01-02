import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app/Config/App_Icon_&_Img.dart';
import 'package:test_app/Config/App_Route.dart';
import 'package:test_app/Config/App_String.dart';
import 'package:test_app/Style/App_Colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    print(MediaQuery.of(context).size.height);
    return Scaffold(
       
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                 
                
                children:<Widget> [
          
                Spacer(),
                  
                  const Text(AppString.welcomeback, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.font),),
                  const SizedBox(height: 16,),
                  const Text(AppString.logintocontinue,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.font),),
                   
                   
                    Spacer(),


                  TextField(
                    decoration: InputDecoration(
                      hintText: AppString.username,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor:AppColors.disableFont.withOpacity(0.5),
                    ),
                    
                  ),
                  const SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppString.password,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor:AppColors.disableFont.withOpacity(0.5),
                    ),
                    
                  ),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                       style: TextButton.styleFrom(
                       foregroundColor: AppColors.font,
                       ),
                      onPressed: () {
                        print("Forget Password Button Clicked");
                      },
                      child: const Text(AppString.forgetpassword),),
                  ),
                   Spacer(),
                  
                  
                  SizedBox(
                     height: 50,
                     width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(AppRoute.main);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text(AppString.login),),
                  ),
                   Spacer(),
                  
                  
                  Text(AppString.orloginwith, style: TextStyle(color: AppColors.font,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                          print("Google Button clicked");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only( 
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25))
                          )
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                         Image.asset(AppIcons.ic_Google, height: 50, width: 50,),
                         const Text(AppString.loginwithgoogle),
                  
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Facebook button clicked");
                    },
                    style:  ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Image.asset(AppIcons.ic_Facebook, height: 50, width: 50,),
                         
                        const Text(AppString.loginwithfacebook),
                  
                      ],
                    ),
                  ),
                  
                   
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     const Text(AppString.donthaveaccount,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.font),),
                      TextButton(
                        onPressed: (){
                          print("SignUp Button Clicked");
                        }, 
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.yellow,
                        ),
                        child: const Text(AppString.signup , style: TextStyle(decoration: TextDecoration.lineThrough, color: AppColors.primary),))
                    ],
                  ),

                   
                  
                   Spacer(),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}