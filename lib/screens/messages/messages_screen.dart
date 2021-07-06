import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';
import './components/body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
            onPressed: () {},
          ),
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(
            width: kDefaultPadding * .75,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kristin Watson',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Active 3m ago',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
