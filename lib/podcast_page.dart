import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_page/constants/language.dart';

class PodcastPageView extends StatelessWidget {
  const PodcastPageView({Key? key}) : super(key: key);

  static const String titleMessage =
      "Millions of podcasts. From the biggest names to the best independents";
  static const String paragraphMessage =
      "You can even download shows to your podcasts library and listen offline";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Column(
        children: [
          Image.asset(imageLink),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _textStyle(titleMessage),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _paragraphStyle(paragraphMessage),
          ),
        ],
      ),
    );
  }

  Widget _textStyle(String message) {
    return Text(
      message,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color.fromARGB(255, 17, 6, 81),
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.5,
      ),
    );
  }
}

Widget _paragraphStyle(String message) {
  return Text(
    message,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Color.fromARGB(255, 48, 47, 47),
      fontWeight: FontWeight.w500,
      fontSize: 18,
      height: 1.6,
    ),
  );
}
