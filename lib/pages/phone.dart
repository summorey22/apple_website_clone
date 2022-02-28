import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:applewebsite_clone/navigationbar.dart';

late VideoPlayerController _controller;

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyPhone();
}

class _MyPhone extends State<MyPhone> {
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/13v1.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const MyNavigationBar(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 700,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          width: 950,
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width / 2 - 475),
                          child: Image.asset(
                            "assets/i13page1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 75),
                              child: const Text(
                                "iPhone 13 Pro",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "Oh. So. Pro.",
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: const Text(
                                "iPhone 13 Pro takes a huge leap forward, bringing incredible \nspeed to everything you do and dramatic new photo and \nvideo capabilities — all in two great sizes.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 22, height: 1.3),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: const Text(
                                "From ₹119900.00* before trade-in",
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xFF98989d)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 35),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, bottom: 10, left: 7, right: 7),
                                    child: const Text(
                                      "Buy",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    primary: const Color(0xFF0669cd)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 75),
                  alignment: Alignment.topCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFa7c1d9),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfff1f2ed),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfffae7cf),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 25, right: 25),
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff54524f)),
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 2 - 127.5 - 6,
                      top: 5,
                      bottom: 100),
                  child: const Text(
                    "Sierra Blue",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: const Color(0xFFf5f5f7),
                  padding: const EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width / 1.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.only(right: 5),
                        child: Stack(
                          children: [
                            SizedBox(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller))),
                            ),
                                Container(
                                  margin: const EdgeInsets.only(top: 40, left: 50),
                                  child: const Text("The fastest chip \nin a smartphone", style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),),),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  margin: const EdgeInsets.only(right: 40,bottom: 20),
                                  child: const Icon(Icons.add_circle_outline,
                                  color: Colors.white,
                                  size: 35,
                                ),)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          
                          child: Stack(children: [
                            Container(
                              
                              margin: const EdgeInsets.only(top: 75, left: 25),
                              alignment: Alignment.topLeft,
                              child: const Text("iPhone 13 Pro Max has", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 115, left: 25),
                              child: const Text("the best", style: TextStyle(fontSize: 70, fontFamily: 'SF Pro Display',),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 180, left: 25),
                              child: const Text("battery life", style: TextStyle(fontSize: 70, fontFamily: 'SF Pro Display', color: Color(0xFF03a10e)),
                            ),),
                            Container(
                              margin: const EdgeInsets.only(top: 265, left: 25),
                              child: const Text("ever on\niPhone.", style: TextStyle(fontSize: 70, fontFamily: 'SF Pro Display', height: 0.95),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.only(bottom: 20, right: 30),
                              child: const Icon(Icons.add_circle_outline,
                              color: Colors.black,
                              size: 35,),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
               /* Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 20, left: 50, right: 50),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/i132.jpg")),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            child: const Text("Shoot\nmacro.", style: TextStyle(fontSize: 45,  fontFamily: 'SF Pro Display', color: Colors.white),),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.0,
                              child: Image.asset("assets/i85.jpg",))
                          ],
                        ),
                      )
                    ],
                  ),
                )*/

              ],
            ),
          )
        ],
      ),
    );
  }
}
