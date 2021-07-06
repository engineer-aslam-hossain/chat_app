import 'package:chat_app/constant.dart';
import 'package:chat_app/models/chat.dart';
import 'package:chat_app/screens/chats/components/chat_card.dart';
import 'package:chat_app/screens/messages/messages_screen.dart';
import 'package:chat_app/widgets/filled_outline_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent message'),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, indx) => ChatCard(
              chat: chatsData[indx],
              onPress: () => Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => MessageScreen())),
            ),
            itemCount: chatsData.length,
          ),
        ),
      ],
    );
  }
}
