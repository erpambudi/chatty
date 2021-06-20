import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String imageUrl;
  final String message;
  final String time;
  final bool myMessage;

  MessageTile(
      {required this.imageUrl,
      required this.message,
      required this.time,
      required this.myMessage});

  @override
  Widget build(BuildContext context) {
    if (myMessage) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style: messageTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: timeMessageTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: bubleMessageColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style: messageTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: timeMessageTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
