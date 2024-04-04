import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lms_app/screens/adminScreen.dart';
import 'package:lms_app/screens/loginScreen.dart';
import 'package:lms_app/screens/studentScreen.dart';
import 'package:lms_app/screens/teacherScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
      bool isLogin = sp.getBool("isLogin")?? false;
      if(isLogin){
        String? user_type = sp.getString("userType");
        if(user_type=="Admin"){
          Timer(const Duration(seconds: 3), () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminScreen()));
          });

        }else if(user_type == "Teacher"){
          Timer(const Duration(seconds: 5), (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TeacherScreen()));
          });
        }else{
          Timer(const Duration(seconds: 5), (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentScreen()));
          });
        }

      }else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
      }
  }
  @override
  void initState(){
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/spbg.jpeg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/lms.png"),
                ),
                SpinKitWave(
                  size: 80,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(

                      decoration: BoxDecoration(
                        color: index.isEven ? const Color(0xff1CB78D) : Colors.white,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}