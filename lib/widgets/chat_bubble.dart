import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    required this.isSender,
    this.image,
  });

  final String message;
  final bool isSender;
  final Widget? image;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: !isSender
          ? AlignmentGeometry.centerLeft
          : AlignmentGeometry.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.80,
          ),
          decoration: BoxDecoration(
            color: isSender ? Color(0XFF232D36) : Color(0XFF168C4B),
            borderRadius: !isSender
                ? BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )
                : BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              bottom: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                if (image != null) ...[const SizedBox(height: 8), image!],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
