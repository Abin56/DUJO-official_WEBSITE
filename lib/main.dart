import 'package:dujo_official_web/view/pages/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyANdsgHSqGl6sxiCt7VHWu6rtJDx5mdwwI",
        authDomain: "lepton-dujo-official.firebaseapp.com",
        projectId: "lepton-dujo-official",
        storageBucket: "lepton-dujo-official.appspot.com",
        messagingSenderId: "983512130711",
        appId: "1:983512130711:web:991cea266a41c65a55b5d2"),
  );
  ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(1536, 792),
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: const Color(0xFF02BB9F),
                primaryColorDark: const Color(0xFF167F67),
                // ignore: deprecated_member_use
                accentColor: const Color(0xFF02BB9F),
              ),
              home: const HomePage());
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFE8EAF6),
        title: SizedBox(
            width: double.infinity,
            //height: 130,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                ),
                InkWell(
                  hoverColor: const Color(0xFF26A69A),
                  onTap: () {},
                  child: const SizedBox(
                    height: 30,
                    width: 75,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    color: const Color(0xFF3949AB),
                  ),
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.65,
                    color: const Color(0xFF26A69A),
                  ),
                  Container(
                    //padding: const EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4),
                    child: ClipPath(
                      // ignore: sort_child_properties_last
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 600,
                        color: const Color(0xFF26A69A),
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.45,
                    color: const Color(0XFFE8EAF6),
                  ),
                  Container(
                    //padding: const EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: ClipPath(
                      // ignore: sort_child_properties_last
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 600,
                        color: const Color(0XFFE8EAF6),
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  Container(
                      height: screenSize.height / 2,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .7, top: 115),
                      child: Image.asset("assets/images/ann.png")),
                  Container(
                      height: screenSize.height / 6,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .025, top: 10),
                      child: Image.asset(
                        "assets/images/lepdujo.jpeg",
                        width: 400,
                        height: 200,
                      )),
                  Container(
                      height: screenSize.height / 6,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .05, top: 40),
                      child: Image.asset(
                        "assets/images/dujo2.png",
                        width: 150,
                        height: 75,
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 300, top: 200),
                    child: Column(
                      children: [
                        const Text(
                          "Logon,",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Feed Your",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " Mind,",
                              style: TextStyle(color: Colors.red, fontSize: 50),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Change The",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " World!",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenSize.width * 0.55, top: 150),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/onlineprofessor.png",
                          height: 50,
                          width: 50,
                        ),
                        const Text("Be a Freelance Faculty  ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenSize.width * 0.82, top: 250),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/settings.png",
                          height: 50,
                          width: 50,
                        ),
                        const Text("Configure Your Class Room",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        const Text("Add Recorded Courses",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        const Text(
                          "Add Online Courses",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        const Text("Configure Your Class Room,and More",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: screenSize.width * 0.6, top: 350),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/hybrid.png",
                          height: 100,
                          width: 150,
                        ),
                        const Text("Invite Students",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: screenSize.width * 0.2, top: 450),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xFF224D83),
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child:
                            //Image.asset("assets/images/hybrid.png",height: 100,width: 150,),
                            Text("Explore Courses",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ))),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ]),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Online Courses",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text("Recorded Courses",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text("Hybrid Courses",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text("Study Materials",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text("Mock Tests",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ]),
          ),
          Row(
            children: [
              Container(
                width: screenSize.width * 0.25,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xFF224D83),
                    border: Border.all(color: Colors.white60, width: 2.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: const [Icon(Icons.search), TextField()],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
