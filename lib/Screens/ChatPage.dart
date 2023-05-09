
import 'package:flutter/material.dart';

import '../Widgets/usercard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int index = 15;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Padding(padding: const EdgeInsets.only(bottom: 1),
      child: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.add_comment_rounded),),
      ),

      body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: h*0.003),
                itemCount: index,
                itemBuilder: (context, index) {
                  return UserCard(h: h);
                }),
          ],
        ),
      ),
    );
  }
}

