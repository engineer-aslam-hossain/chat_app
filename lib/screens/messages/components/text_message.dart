import 'package:chat_app/constant.dart';
import 'package:chat_app/models/chatMessage.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage? message;

  const TextMessage({
    this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * .75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color:
            message!.isSender ? kPrimaryColor : kPrimaryColor.withOpacity(.08),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message!.text,
        style: TextStyle(
          color: message!.isSender
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
