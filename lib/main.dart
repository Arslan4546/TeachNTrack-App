import 'package:flutter/material.dart';
import 'package:lms_app/screens/loadingScreen.dart';
void main(){
  runApp(const MyLms());
}
class MyLms extends StatefulWidget {
  const MyLms({super.key});

  @override
  State<MyLms> createState() => _MyLmsState();
}

class _MyLmsState extends State<MyLms> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
