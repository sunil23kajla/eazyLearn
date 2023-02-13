import 'package:eazylearn/course/stories/StoriesPageview_2/StoriesPageview_2.dart';
import 'package:eazylearn/routes/generated_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StoriesPageview_2(),
      onGenerateRoute: (settings) => generatedRoutes(settings),
    );
  }
}
