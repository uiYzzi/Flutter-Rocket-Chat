import 'package:flutter/material.dart';
import 'package:flutter_auth/responsive.dart';
import '../ChatData/chatdata_screen.dart';
import 'components/flyer.dart';

class ChatData extends StatefulWidget {
  const ChatData({Key? key}) : super(key: key);

  @override
  State<ChatData> createState() => _ChatDataState();
}

class _ChatDataState extends State<ChatData> {
  @override
  Widget build(BuildContext context) {
    return const ChatPage();
  }
}
