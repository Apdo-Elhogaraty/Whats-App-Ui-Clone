import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants.dart';
import 'package:whatsapp_ui_clone/widgets/chat_bubble.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,

      decoration: BoxDecoration(
        color: Color(0XFF1e1e1e),

        image: DecorationImage(
          image: AssetImage('assets/images/background_pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: [
          ChatBubble(message: "Hello !", isSender: false),
          ChatBubble(message: "Hello !", isSender: true),
          ChatBubble(
            message:
                "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
            isSender: false,
          ),
          ChatBubble(
            message: "Missed you bro",
            isSender: false,
            image: Image.asset(
              "assets/images/massage.JPG",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width * 0.70,
            ),
          ),
          ChatBubble(
            message: "WoooWooo !, what a great vibes !",
            isSender: true,
          ),
          ChatBubble(message: "waiting for you tomorrow", isSender: false),
          ChatBubble(message: "maybe i will try", isSender: true),
          ChatBubble(message: "Bro it's the Last Day !!", isSender: false),
          ChatBubble(
            message: "No Way i will do my best to come tmr",
            isSender: true,
            image: Image.asset(
              "assets/images/massage.JPG",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width * 0.70,
            ),
          ),
          ChatBubble(message: "ok bro, waiting for you", isSender: false),
        ],
      ),
    );
  }
}
