import 'package:aunty_rafiki/models/message.dart';
import 'package:aunty_rafiki/views/components/tiles/messages/my_message_tile.dart';
import 'package:aunty_rafiki/views/components/tiles/messages/others_message_tile.dart';
import 'package:aunty_rafiki/views/components/tiles/swiper.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final Message message;
  final String chartType;

  MessageTile({@required this.message, @required this.chartType});

  @override
  Widget build(BuildContext context) {
    return message.sentByMe
        ? MyMessageTile(
            message: message,
          )
        : Swiperable(
            key: Key(message.toString()),
            onDismissed: (direction) {
              print(direction);
            },
            child: OthersMessageTile(
              chartType: chartType,
              message: message,
            ),
          );
  }
}
