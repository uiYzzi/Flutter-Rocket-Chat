import 'package:flutter/material.dart';
import 'package:flutter_auth/responsive.dart';
import '../ChatData/chatdata_screen.dart';
import 'components/left_sidebar.dart';
import 'components/person_list.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: const MobileChatList(),
        desktop: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const LeftSidebar(),
            const Expanded(
              child: PersonList(),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileChatList extends StatelessWidget {
  const MobileChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
