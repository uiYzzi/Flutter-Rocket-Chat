import 'package:flutter/material.dart';
import 'package:flutter_auth/responsive.dart';
import '../ChatList/chatlist_screen.dart';
import '../ChatData/chatdata_screen.dart';
import 'package:window_manager/window_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kWindowCaptionHeight),
        child: Row(children: <Widget>[
          Expanded(
            child: WindowCaption(
              brightness: Theme.of(context).brightness,
              backgroundColor: Colors.transparent,
            ),
          ),
        ]),
      ),
      body: Responsive(
        mobile: const MobileHomeScreen(),
        desktop: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: double.infinity,
              width: 400,
              child: ChatList(),
            ),
            const Expanded(
              child: ChatData(),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // ignore: prefer_const_constructors
        Expanded(
          child: ChatList(),
        ),
      ],
    );
  }
}
