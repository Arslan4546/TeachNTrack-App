import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_app/screens/adminScreen.dart';
import 'package:lms_app/screens/studentScreen.dart';
import 'package:lms_app/screens/teacherScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userTypeController = TextEditingController();
final List<String> items = ["Admin", "Student", "Teacher"];
 String selectedOption = "Admin";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xffF5F9FA),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                            height: 550,
                  margin: const EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20),
                ),
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/lms.png"),
                        width: 150,
                      ),
                      Text("Sign In",
                        style: GoogleFonts.montserrat(
                          textStyle : const TextStyle(
                            fontSize: 26,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: GoogleFonts.montserrat(),
                            prefixIcon: const Icon(Icons.email_outlined),
                            fillColor: const Color(0xffF5F9FA),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: GoogleFonts.montserrat(),
                              prefixIcon: const Icon(Icons.email_outlined),
                              suffixIcon: const Icon(Icons.visibility_off, color: Colors.black45,),
                              fillColor: const Color(0xffF5F9FA),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: DropdownButtonFormField<String>(
                            value: selectedOption,
                            items: items.map((String item){
                              return DropdownMenuItem<String>(
                                 value: item,
                                  child: Text(item,
                                    style: GoogleFonts.montserrat(),
                                  ),
                                );
                            }).toList(),
                            onChanged: (String? value){
                                  if(value != null){
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  }
                            },
                          decoration: const InputDecoration(
                            labelText: 'Select an option',
                            labelStyle: TextStyle(color: Color(0xff231C1F)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff231C1F),
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff231C1F),
                                )
                            ),
                            fillColor: Color(0xffF5F9FA),
                            filled: true,

                          ),
                            ),
                      ),
                     Padding (
                       padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                        child: InkWell(
                          onTap: () async{
                            SharedPreferences sp = await SharedPreferences.getInstance();
                            sp.setString("email",emailController.text.toString());
                            sp.setString("userType", selectedOption);
                            sp.setBool("isLogin",true);
                            var user_type = sp.getString("userType");
                            if(user_type=="Admin"){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> const AdminScreen()));
                            }else if(user_type == "Teacher"){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const TeacherScreen()));
                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentScreen()));
                            }

                          },
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xff1CB78D),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Sign up",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                    children: <TextSpan> [
                      TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                          ),
                        ),
                      ),

                      TextSpan(
                        text: "Log in",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      );

  }
}
