import 'package:chat_app/constant.dart';
import 'package:chat_app/models/chatMessage.dart';
import 'package:chat_app/screens/messages/components/chat_input_field.dart';
import 'package:chat_app/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemBuilder: (ctx, indx) =>
                  Message(chatMessage: demeChatMessages[indx]),
              itemCount: demeChatMessages.length,
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
