import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants.dart';
import 'package:whatsapp_ui_clone/widgets/bottom_bar.dart';
import 'package:whatsapp_ui_clone/widgets/chat_body.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kPrimaryColor),
        leadingWidth: 85,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Untitled.jpg'),
            ),
          ],
        ),

        title: Text(
          "Abdelrahman Ahmed",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.call, color: Colors.white),
          ),

          Icon(Icons.videocam_outlined, color: Colors.white),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatBody()),
          BottomBar(),
        ],
      ),
    );
  }
}
