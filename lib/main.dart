import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_page/podcast_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Podcast Page',
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: Colors.transparent),
          useMaterial3: true,
        ),
        home: PodcastPageView());
  }
}
