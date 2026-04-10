import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0XFF1e1e1e),
        image: DecorationImage(
          image: AssetImage('assets/images/background_pattern.png'),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                prefixIconColor: Colors.white,
                suffixIconColor: Colors.white,
                hintText: 'Type a Message ...',
                prefixIcon: Icon(Icons.camera_alt_outlined),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(kPrimaryColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.keyboard_voice_sharp),
          ),
        ],
      ),
    );
  }
}
