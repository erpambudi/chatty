import 'package:chatty/models/message.dart';
import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final Message message;

  ChatTile({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(
            message.imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.name,
                  style: titleTextStyle,
                ),
                Text(
                  message.message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: message.unread
                      ? subtitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subtitleTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            message.time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
