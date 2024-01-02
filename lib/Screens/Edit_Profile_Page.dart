import 'package:flutter/material.dart';
import 'package:test_app/Components/Avatar.dart';
import 'package:test_app/Components/Text_Field.dart';
import 'package:test_app/Components/ToolBar.dart';
import 'package:test_app/Config/App_String.dart';
import 'package:test_app/Style/App_Colors.dart';
import 'package:test_app/Style/App_Text.dart';

enum Gender{
  male,
  female,
  other,
  none,
}

class EditProfile extends StatefulWidget {
   EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender= Gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
        
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AvatarComp(size: 150,),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      child: Icon(Icons.edit, size: 20,color: AppColors.black,))),
                ],
              ),
              SizedBox(height: 16,),
              TextFieldComponent(hint: AppString.firstname),
              SizedBox(height: 16,),
              TextFieldComponent(hint: AppString.lastname),
              SizedBox(height: 16,),
              TextFieldComponent(hint: AppString.phonenumber),
              SizedBox(height: 16,),
              TextFieldComponent(hint: AppString.location),
              SizedBox(height: 16,),
              TextFieldComponent(hint: AppString.birthday),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.disableFont.withOpacity(0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppString.Gender, style: AppText.subtitle3,),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              title: Text(AppString.male),
                              visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity, 
                                vertical: VisualDensity.minimumDensity),
                              contentPadding: EdgeInsets.zero,
                              value: Gender.male, 
                              groupValue: gender, 
                              onChanged: (value){
                                setState(() {
                                  gender= Gender.male;
                                });
                              }),
                          ),
                          Expanded(
                            child: RadioListTile(
                              title: Text(AppString.female),
                              visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity, 
                                vertical: VisualDensity.minimumDensity),
                              contentPadding: EdgeInsets.zero,
                              value: Gender.female, 
                              groupValue: gender, 
                              onChanged: (value){
                                  setState(() {
                                    gender= Gender.female;
                                  });
                              }),
                          ),
                          Expanded(
                            child: RadioListTile(
                              title: Text(AppString.other),
                              visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity, 
                                vertical: VisualDensity.minimumDensity),
                              contentPadding: EdgeInsets.zero,
                              value: Gender.other, 
                              groupValue: gender, 
                              onChanged: (value){
                                setState(() {
                                  gender= Gender.other;
                                });
                              }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}