import 'package:flutter/material.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  @override
  Widget build(BuildContext context) {
        double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [Center(child: Text('Profile'))],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),


      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: h*0.03,),
            child: Container(
              height: h*0.2,
              width: w,
              child: CircleAvatar(child: Icon(Icons.person,size: h*0.2,)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Name'),
            subtitle: Text('enter ...')
          )

        ],
      ),
    );
  }
}
