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
      backgroundColor: const Color.fromARGB(255, 221, 226, 229),
      body: Column(
        children: [
          Image.asset(imageLink),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _textStyle(titleMessage),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _paragraphStyle(paragraphMessage),
          ),
          const SizedBox(height: 65),
          _roundedButton(),
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

  Widget _roundedButton() {
    return RawMaterialButton(
      onPressed: () {
        // Düğmeye basıldığında yapılacak işlemler
      },
      fillColor: Color.fromARGB(255, 105, 147, 81),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
      child: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
