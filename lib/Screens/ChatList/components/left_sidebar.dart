import 'package:flutter/material.dart';
import '../../../constants.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(18.0),
      color: Theme.of(context).brightness == Brightness.dark
          ? DarkkPrimaryColor
          : kPrimaryColor,
      child: Column(
        children: [
          const Text("YYDS"),
          const Spacer(),
          AspectRatio(
            aspectRatio: 1 / 1,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? DarkkPrimaryLightColor
                          : const Color(0xFFec6a52),
                  shape: const RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                ),
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
