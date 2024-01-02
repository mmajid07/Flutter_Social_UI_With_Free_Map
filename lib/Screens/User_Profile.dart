import 'package:flutter/material.dart';
import 'package:test_app/Components/ToolBar.dart';
import 'package:test_app/Config/App_Route.dart';
import 'package:test_app/Style/App_Text.dart';

enum ProfileMenu{
  Edit,
  Logout,
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: "Profile",
      actions: [

        PopupMenuButton <ProfileMenu>(
          onSelected: (value){
            switch(value){
              case ProfileMenu.Edit:
              Navigator.of(context).pushNamed(AppRoute.edit_profile);
              break;
              case ProfileMenu.Logout:
              print("Log Out");
              break;
              default:
            }
          },
          itemBuilder: (context){
          return[
            
            PopupMenuItem  (child: Row(
              children:  <Widget> [
                Icon(Icons.edit),
                SizedBox(width: 10,),
                 Text("Edit"),
              ],
            ),value: ProfileMenu.Edit,),

            PopupMenuItem(
              child: Row(
              children:   [
                Icon(Icons.logout),
                SizedBox(width: 10,),
                Text("Log out"),
              ],
            ), value: ProfileMenu.Logout,),
          ];
        })
      ],
      ),
      body: Column(
        children:   [
          SizedBox(height: 10,),
           
           ClipRRect(
             
            borderRadius: BorderRadius.circular(80),
            child:
                       SizedBox(
                        width: 200,
                        height: 200,
                         child: CircleAvatar(
                          backgroundImage: AssetImage("assets/temp/user1.jpg",)),
                       )),


           //CircleAvatar(child: Image.asset("assets/temp/user1.jpg",  width: 200, height: 200,))),
          
          //SizedBox(height: 20,),
          Text("Muhammad Majid", style: AppText.header2,),
          SizedBox(height: 10,),
          Text("Kot Mubarak", style: AppText.subtitle3,),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("700", style: AppText.header2,),
                  Text("Followers", style: AppText.subtitle3,),

                ],
              ),
              Column(
                children: [
                  Text("10", style: AppText.header2,),
                  Text("Post", style: AppText.subtitle3,),

                ],
              ),
              Column(
                children: [
                  Text("70", style: AppText.header2,),
                  Text("Following", style: AppText.subtitle3,),

                ],
              ),
            ],
          ),
          Divider(thickness: 2,height: 20),

        ],
      ),
    );
  }
}