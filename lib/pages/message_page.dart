import 'package:chatty/theme.dart';
import 'package:chatty/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group1.png',
              height: 55,
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jakarta Fair',
                    style: titleTextStyle,
                  ),
                  Text(
                    '14,209 members',
                    style: subtitleTextStyle,
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/call_btn.png',
              height: 55,
              width: 55,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 80),
        child: Column(
          children: [
            MessageTile(
              imageUrl: 'assets/images/friend1.png',
              message: 'How are ya guys?',
              time: '02:30',
              myMessage: false,
            ),
            MessageTile(
              imageUrl: 'assets/images/friend3.png',
              message: 'Find here :P ?',
              time: '03:11',
              myMessage: false,
            ),
            MessageTile(
              imageUrl: 'assets/images/friend4.png',
              message:
                  'Thinking about how to deal with this client from hell...',
              time: '22:08',
              myMessage: true,
            ),
            MessageTile(
              imageUrl: 'assets/images/friend2.png',
              message: 'Love them',
              time: '23:11',
              myMessage: false,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: 'Type message ...',
            hintStyle: titleTextStyle.copyWith(
              color: Color(
                0xFF999999,
              ),
            ),
            border: InputBorder.none,
            suffixIcon: Container(
              margin: EdgeInsets.only(left: 12),
              child: Image.asset(
                'assets/images/btn_send.png',
                width: 35,
                height: 35,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgMessageColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              body(),
            ],
          ),
        ),
      ),
    );
  }
}
