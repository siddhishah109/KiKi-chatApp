import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        
        child: ListTile(
          hoverColor: Colors.grey,
          horizontalTitleGap: h * 0.03,
          minLeadingWidth: h * 0.0,
          leading: CircleAvatar(
            child: Icon(Icons.person_2),
            backgroundColor: Colors.black,
            radius: h * 0.03,
          ),
          title: Text('Name sefsdv'),
          subtitle: Text("message..........sdvsd.",maxLines: 1,),
          selectedTileColor: Colors.grey,
          trailing: Padding(
            padding: EdgeInsets.only(top: h*0.015),
            child: Column(
            
              children: [
                Text("9:30 pm"),
                Icon(Icons.done_all)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
