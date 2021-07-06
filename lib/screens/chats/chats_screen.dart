import 'package:chat_app/constant.dart';
import 'package:chat_app/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottmNavigationBar(),
    );
  }

  BottomNavigationBar buildBottmNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Chats',
          icon: Icon(
            Icons.messenger,
          ),
        ),
        BottomNavigationBarItem(
          label: 'People',
          icon: Icon(
            Icons.people,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Calls',
          icon: Icon(
            Icons.call,
          ),
        ),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            )),
      ],
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text('Chats'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
