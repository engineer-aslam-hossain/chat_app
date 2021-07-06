import 'package:chat_app/constant.dart';
import 'package:chat_app/models/chatMessage.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage? message;

  const AudioMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * .55,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * .75),
      decoration: BoxDecoration(
        color:
            message!.isSender ? kPrimaryColor : kPrimaryColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: !message!.isSender ? kPrimaryColor : Colors.white,
          ),
          SizedBox(
            width: kDefaultPadding / 4,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: !message!.isSender ? kPrimaryColor : Colors.white,
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: message!.isSender ? Colors.white : kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 4,
          ),
          Text(
            '0.27',
            style: TextStyle(
              fontSize: 12,
              color: message!.isSender ? Colors.white : null,
            ),
          ),
        ],
      ),
    );
  }
}
