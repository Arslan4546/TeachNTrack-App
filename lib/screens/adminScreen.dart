import 'package:flutter/material.dart';
import 'package:lms_app/screens/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          drawer: Drawer(
              backgroundColor: const Color(0xff1CB78D),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 30),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/arslan.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Arslan Tariq",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Rubik Regular",
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "arslantariq4546@gmail.com",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Rubik Regular",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Rubik Medium",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.event_note_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Schedule",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.note_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Post Grade",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Personal",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Rubik Medium",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Chat",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Setting",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Rubik Medium",
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.support_agent_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Support",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik Regular",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () async {
                          SharedPreferences sp =
                              await SharedPreferences.getInstance();
                          sp.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Rubik Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          body: SafeArea(
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/arslan.png"),
                    radius: 50,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Muhammad Arslan",
                  style: TextStyle(
                    fontFamily: "Rubik Medium",
                    fontSize: 17,
                  ),
                ),
                const Text(
                  "Admin",
                  style: TextStyle(
                    fontFamily: "Montserrat Regular",
                    color: Color(0xff1CB78D),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Bachelor of Computer Science From \nIslamia University Of Bahawalpur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Montserrat Regular",
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook_outlined,
                        color: Color(0xff1CB78D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        color: Color(0xff1CB78D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.public,
                        color: Color(0xff1CB78D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.support_agent_outlined,
                        color: Color(0xff1CB78D),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xff1CB78D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Rubik Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        // color: const Color(0xff1CB78D),
                        border: Border.all(
                          color: const Color(0xff1CB78D),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 25,
                          right: 20,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.message,
                                color: Color(0xff1CB78D),
                                size: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Message",
                                style: TextStyle(
                                  color: Color(0xff1CB78D),
                                  fontFamily: "Rubik Regular",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2FAF6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "12",
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              color: Color(0xff1CB78D),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Courses",
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.black87.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2FAF6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "916",
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              color: Color(0xff1CB78D),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Students",
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.black87.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2FAF6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "32105",
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              color: Color(0xff1CB78D),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.black87.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2FAF6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "500+",
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              color: Color(0xff1CB78D),
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Feedback",
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.black87.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      child: Text("Course"),
                    ),
                    Tab(
                      child: Text("Student"),
                    ),
                  ],
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color(0xff1CB78D),
                  labelColor: Color(0xff1CB78D),
                  labelStyle: TextStyle(
                    fontFamily: "Montserrat Semi Bold",
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Expanded(
                  child: TabBarView(children: [
                 ListView(
                   children: [
                     const SizedBox(
                       height: 20,
                     ),
                     Container(
                       width: double.infinity,
                       margin: const EdgeInsets.symmetric(horizontal: 20),
                       height: 110,
                       child: Card(
                         shadowColor: Colors.grey,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: const DecorationImage(
                                     image: AssetImage(
                                         'assets/images/project.png'),
                                     fit: BoxFit.cover,
                                   )),
                             ),
                             Column(
                               children: [
                                 Container(
                                   width: 170,
                                   height: 35,
                                   margin: const EdgeInsets.only(
                                     top: 15,
                                   ),
                                   child: const Text(
                                     "Project Management Course 2024",
                                     style: TextStyle(
                                       fontFamily: "fontMain1",
                                       fontWeight: FontWeight.bold,
                                       fontSize: 12,
                                     ),
                                   ),
                                 ),
                                 const SizedBox(
                                   height: 3,
                                 ),
                                 Container(
                                   width: 170,
                                   height: 15,
                                   margin: const EdgeInsets.only(top: 3),
                                   child: const Row(
                                     children: [
                                       Icon(
                                         Icons.note_alt,
                                         size: 13,
                                       ),
                                       SizedBox(
                                         width: 4,
                                       ),
                                       Text(
                                         "28 lessons          ",
                                         style: TextStyle(
                                           fontSize: 10,
                                         ),
                                       ),
                                       Icon(
                                         Icons.watch_later_sharp,
                                         size: 13,
                                       ),
                                       SizedBox(
                                         width: 4,
                                       ),
                                       Text(
                                         "3 hrs 20 mins",
                                         style: TextStyle(
                                           fontSize: 9,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Container(
                                   width: 160,
                                   height: 1,
                                   color: Colors.grey.withOpacity(0.2),
                                   margin: const EdgeInsets.symmetric(
                                       horizontal: 10),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 const SizedBox(
                                   width: 165,
                                   child: Row(
                                     children: [
                                       Flexible(
                                         flex: 4,
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment.start,
                                           children: [
                                             Text(
                                               "Mrs.Sandra ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 10,
                                                   fontFamily: "fontMain1"),
                                             ),
                                           ],
                                         ),
                                       ),
                                       Flexible(
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment.end,
                                           children: [
                                             Text("\$ 50",
                                                 style: TextStyle(
                                                     color:
                                                     Color(0xFF56AF78),
                                                     fontFamily: "fontMain1",
                                                     fontSize: 10)),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Container(
                       width: double.infinity,
                       margin: const EdgeInsets.symmetric(horizontal: 20),
                       height: 110,
                       child: Card(
                         shadowColor: Colors.grey,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: const DecorationImage(
                                     image: AssetImage(
                                         'assets/images/react.png'),
                                     fit: BoxFit.cover,
                                   )),
                             ),
                             Column(
                               children: [
                                 Container(
                                   width: 170,
                                   height: 35,
                                   margin: const EdgeInsets.only(
                                     top: 15,
                                   ),
                                   child: const Text(
                                     "Complete Advance React Native Course",
                                     style: TextStyle(
                                       fontFamily: "fontMain1",
                                       fontWeight: FontWeight.bold,
                                       fontSize: 12,
                                     ),
                                   ),
                                 ),
                                 const SizedBox(
                                   height: 3,
                                 ),
                                 Container(
                                   width: 170,
                                   height: 15,
                                   margin: const EdgeInsets.only(top: 3),
                                   child: const Row(
                                     children: [
                                       Icon(
                                         Icons.note_alt,
                                         size: 13,
                                       ),
                                       SizedBox(
                                         width: 4,
                                       ),
                                       Text(
                                         "5 lessons          ",
                                         style: TextStyle(
                                           fontSize: 10,
                                         ),
                                       ),
                                       Icon(
                                         Icons.watch_later_sharp,
                                         size: 13,
                                       ),
                                       SizedBox(
                                         width: 4,
                                       ),
                                       Text(
                                         "20 hrs 40 mins",
                                         style: TextStyle(
                                           fontSize: 9,
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Container(
                                   width: 160,
                                   height: 1,
                                   color: Colors.grey.withOpacity(0.2),
                                   margin: const EdgeInsets.symmetric(
                                       horizontal: 10),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 const SizedBox(
                                   width: 165,
                                   child: Row(
                                     children: [
                                       Flexible(
                                         flex: 4,
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment.start,
                                           children: [
                                             Text(
                                               "Ghulam Mujtaba ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 10,
                                                   fontFamily: "fontMain1"),
                                             ),
                                           ],
                                         ),
                                       ),
                                       Flexible(
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment.end,
                                           children: [
                                             Text("\$ 49",
                                                 style: TextStyle(
                                                     color:
                                                     Color(0xFF56AF78),
                                                     fontFamily: "fontMain1",
                                                     fontSize: 10)),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(height: 10,),
                     Container(
                       width:double.infinity,
                       margin: const EdgeInsets.symmetric(horizontal: 20),
                       height: 110,
                       child: Card(
                         shadowColor: Colors.grey,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 80,
                               width: 80,

                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: const DecorationImage(
                                     image: AssetImage(
                                         'assets/images/meta.png'
                                     ),
                                     fit: BoxFit.cover,
                                   )
                               ),
                             ),
                             Column(
                               children: [
                                 Container(

                                   width: 170,
                                   height: 35,
                                   margin: const EdgeInsets.only(top: 15,),

                                   child: const Text("The Complete Meta Ads Course 2024",style: TextStyle(
                                     fontFamily: "fontMain1",
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12,
                                   ),),

                                 ),
                                 const SizedBox(height: 3,),
                                 Container(
                                   width: 170,
                                   height: 15,
                                   margin: const EdgeInsets.only(top:3),
                                   child: const Row(
                                     children: [
                                       Icon(Icons.note_alt,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("6 lessons          ",style: TextStyle(
                                         fontSize: 10,

                                       ),),
                                       Icon(Icons.watch_later_sharp,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("20 hrs 05 mins",style: TextStyle(
                                         fontSize: 9,

                                       ),),
                                     ],
                                   ),

                                 ),
                                 const SizedBox(height: 5,),
                                 Container(
                                   width: 160,
                                   height: 1,
                                   color: Colors.grey.withOpacity(0.2),
                                   margin: const EdgeInsets.symmetric(horizontal: 10),
                                 ),
                                 const SizedBox(height: 5,),
                                 const SizedBox(

                                   width: 165,

                                   child: Row(
                                     children: [
                                       Flexible(
                                         flex:4,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           children: [
                                             Text("Umar Tazkeer                 ",style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 10,

                                                 fontFamily: "fontMain1"



                                             ),),

                                           ],
                                         ),
                                       ),
                                       Flexible(
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.end
                                           ,
                                           children: [
                                             Text("\$ 15",style: TextStyle(
                                                 color: Color(0xFF56AF78),

                                                 fontFamily: "fontMain1",
                                                 fontSize: 10
                                             )),

                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),

                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(height: 10,),
                     Container(
                       width:double.infinity,
                       margin: const EdgeInsets.symmetric(horizontal: 20),
                       height: 110,
                       child: Card(
                         shadowColor: Colors.grey,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 80,
                               width: 80,

                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: const DecorationImage(
                                     image: AssetImage(
                                         'assets/images/social.png'
                                     ),
                                     fit: BoxFit.cover,
                                   )
                               ),
                             ),
                             Column(
                               children: [
                                 Container(

                                   width: 170,
                                   height: 35,
                                   margin: const EdgeInsets.only(top: 15,),

                                   child: const Text("The Social Media Marketing & Management Course 2024",style: TextStyle(
                                     fontFamily: "fontMain1",
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12,
                                   ),),

                                 ),
                                 const SizedBox(height: 3,),
                                 Container(
                                   width: 170,
                                   height: 15,
                                   margin: const EdgeInsets.only(top:3),
                                   child: const Row(
                                     children: [
                                       Icon(Icons.note_alt,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("15 lessons       ",style: TextStyle(
                                         fontSize: 10,

                                       ),),
                                       Icon(Icons.watch_later_sharp,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("30 hrs 20 mins",style: TextStyle(
                                         fontSize: 9,

                                       ),),
                                     ],
                                   ),

                                 ),
                                 const SizedBox(height: 5,),
                                 Container(
                                   width: 160,
                                   height: 1,
                                   color: Colors.grey.withOpacity(0.2),
                                   margin: const EdgeInsets.symmetric(horizontal: 10),
                                 ),
                                 const SizedBox(height: 5,),
                                 const SizedBox(

                                   width: 165,

                                   child: Row(
                                     children: [
                                       Flexible(
                                         flex:4,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           children: [
                                             Text("Azad Chaiwala",style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 10,

                                                 fontFamily: "fontMain1"



                                             ),),

                                           ],
                                         ),
                                       ),
                                       Flexible(
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.end
                                           ,
                                           children: [
                                             Text("\$ 150",style: TextStyle(
                                                 color: Color(0xFF56AF78),

                                                 fontFamily: "fontMain1",
                                                 fontSize: 10
                                             )),

                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),

                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(height: 10,),

                     Container(
                       width:double.infinity,
                       margin: const EdgeInsets.symmetric(horizontal: 20),
                       height: 110,
                       child: Card(
                         shadowColor: Colors.grey,
                         color: Colors.white,
                         child: Row(
                           children: [
                             Container(
                               height: 80,
                               width: 80,

                               margin: const EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   image: const DecorationImage(
                                     image: AssetImage(
                                         'assets/images/mern.png'
                                     ),
                                     fit: BoxFit.cover,
                                   )
                               ),
                             ),
                             Column(
                               children: [
                                 Container(

                                   width: 170,
                                   height: 35,
                                   margin: const EdgeInsets.only(top: 15,),

                                   child: const Text("MERN Stack Web Development Bootcamp",style: TextStyle(
                                     fontFamily: "fontMain1",
                                     fontWeight: FontWeight.bold,
                                     fontSize: 12,
                                   ),),

                                 ),
                                 const SizedBox(height: 3,),
                                 Container(
                                   width: 170,
                                   height: 15,
                                   margin: const EdgeInsets.only(top:3),
                                   child: const Row(
                                     children: [
                                       Icon(Icons.note_alt,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("15 lessons       ",style: TextStyle(
                                         fontSize: 10,

                                       ),),
                                       Icon(Icons.watch_later_sharp,size: 13,),
                                       SizedBox(width: 4,),
                                       Text("28 hrs 10 mins",style: TextStyle(
                                         fontSize: 9,

                                       ),),
                                     ],
                                   ),

                                 ),
                                 const SizedBox(height: 5,),
                                 Container(
                                   width: 160,
                                   height: 1,
                                   color: Colors.grey.withOpacity(0.2),
                                   margin: const EdgeInsets.symmetric(horizontal: 10),
                                 ),
                                 const SizedBox(height: 5,),
                                 const SizedBox(

                                   width: 165,

                                   child: Row(
                                     children: [
                                       Flexible(
                                         flex:4,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           children: [
                                             Text("Christ Vizmen",style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 10,

                                                 fontFamily: "fontMain1"



                                             ),),

                                           ],
                                         ),
                                       ),
                                       Flexible(
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.end
                                           ,
                                           children: [
                                             Text("\$ 75",style: TextStyle(
                                                 color: Color(0xFF56AF78),

                                                 fontFamily: "fontMain1",
                                                 fontSize: 10
                                             )),

                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),

                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(height: 10,),
                   ],
                 ),
            ListView(children: const [
              SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boy1.png"),
                  radius: 30,
                ),
                title: Text("Muhammad Bilal"),
                subtitle: Text("Student Of BSCS"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boy4.png"),
                  radius: 30,
                ),
                title: Text("Saqlain Abbas"),
                subtitle: Text("Studied At Islamia University"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boy3.png"),
                  radius: 30,
                ),
                title: Text("Arslan Tariq"),
                subtitle: Text("Studied At NUST University"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boy2.png"),
                  radius: 30,
                ),
                title: Text("Asif Raza"),
                subtitle: Text("Student At Islamia University"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/girl2.png"),
                  radius: 30,
                ),
                title: Text("Khadija Hashmi"),
                subtitle: Text("Student At Air University"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/girl1.png"),
                  radius: 30,
                ),
                title: Text("Minahil Ali"),
                subtitle: Text("Studied At PGC"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boy3.png"),
                  radius: 30,
                ),
                title: Text("Ali Akbar"),
                subtitle: Text("Student At Gomal University"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],)
                  ]),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
