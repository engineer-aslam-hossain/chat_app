import 'package:chat_app/constant.dart';
import 'package:chat_app/models/chatMessage.dart';
import 'package:chat_app/screens/messages/components/audio_message.dart';
import 'package:chat_app/screens/messages/components/text_message.dart';
import 'package:chat_app/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final ChatMessage chatMessage;

  const Message({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContian(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(
            message: message,
          );
          break;
        case ChatMessageType.audio:
          return AudioMessage(
            message: message,
          );
          break;
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: chatMessage.isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!chatMessage.isSender)
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          messageContian(chatMessage),
          if (chatMessage.isSender)
            MessageStatusDot(
              status: chatMessage.messageStatus,
            ),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({
    Key? key,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? dotColot(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(.1);
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      height: 12,
      width: 12,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: dotColot(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
