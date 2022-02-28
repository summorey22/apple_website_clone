import 'package:flutter/material.dart';
import 'package:applewebsite_clone/minnavbar.dart';
import 'package:applewebsite_clone/navigationbar.dart';
import 'package:applewebsite_clone/pages/phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: "WEBPAGE",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          barSetter(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Stack(
                  children: [
                    SizedBox(
                        height: 600,
                        child: Image.asset(
                          "assets/i45.jpg",
                          fit: BoxFit.cover,
                        )),
                    Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top: 80),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyPhone()));
                              },
                              splashColor: Colors.transparent,
                              child: const Text(
                                "iPhone 13 Pro",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Text(
                              "Oh. So. Pro.",
                              style: TextStyle(fontSize: 30),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Learn More",
                                        style: TextStyle(
                                            color: Color(0xFF0669cd),
                                            fontSize: 20),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 2.5),
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF0669cd),
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Buy",
                                          style: TextStyle(
                                              color: Color(0xFF0669cd),
                                              fontSize: 20),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 2.5),
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF0669cd),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 500,
                          child: Image.asset(
                            "assets/13phone.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 65),
                          child: Column(
                            children: [
                              const Text(
                                "iPhone 13",
                                style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Your new superpower.",
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xFFfec2eb)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Learn More",
                                          style: TextStyle(
                                              color: Color(0xFF0669cd),
                                              fontSize: 20),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 2.5),
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF0669cd),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Buy",
                                            style: TextStyle(
                                                color: Color(0xFF0669cd),
                                                fontSize: 20),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 2.5),
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xFF0669cd),
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 600,
                          child: Image.asset(
                            "assets/valent.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(top: 65),
                                child: const Text(
                                  "Valentine's Day",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xFF602d62),
                                      fontFamily: 'SF Pro Display'),
                                )),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                "Last minute gift?\nYou're just in time.",
                                style: TextStyle(
                                    fontSize: 55,
                                    color: Color(0xFF602d62),
                                    fontFamily: 'SF Pro Display'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Shop",
                                    style: TextStyle(
                                        color: Color(0xFF0669cd), fontSize: 20),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 2.5),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF0669cd),
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2 - 22.5),
                          child: Stack(children: [
                            SizedBox(
                              height: 500,
                              child: Image.asset(
                                'assets/watch.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 25),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  child: Image.asset("assets/watch logo.png"),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Text(
                                    "Introducing our largest display yet.",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Learn More",
                                            style: TextStyle(
                                                color: Color(0xFF0669cd),
                                                fontSize: 20),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 2.5),
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xFF0669cd),
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 25),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Color(0xFF0669cd),
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2.5),
                                              alignment: Alignment.center,
                                              child: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF0669cd),
                                                size: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: (MediaQuery.of(context).size.width / 2 - 22.5),
                          child: Stack(children: [
                            SizedBox(
                              height: 500,
                              child: Image.asset(
                                'assets/ipadmini.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset("assets/ipadlogo.png"),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: const Text(
                                      "Mega power. Mini size.",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Learn More",
                                              style: TextStyle(
                                                  color: Color(0xFF0669cd),
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2.5),
                                              alignment: Alignment.center,
                                              child: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF0669cd),
                                                size: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 25),
                                          child: Row(
                                            children: [
                                              const Text(
                                                "Buy",
                                                style: TextStyle(
                                                    color: Color(0xFF0669cd),
                                                    fontSize: 20),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 2.5),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xFF0669cd),
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    )),
                Container(
                    margin:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 2 - 22.5),
                          child: Stack(children: [
                            SizedBox(
                              height: 500,
                              child: Image.asset(
                                'assets/mcbook.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Macbook Pro",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 45),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Text(
                                    "Supercharged for pros.",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Learn More",
                                            style: TextStyle(
                                                color: Color(0xFF0669cd),
                                                fontSize: 20),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 2.5),
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xFF0669cd),
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 25),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Color(0xFF0669cd),
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2.5),
                                              alignment: Alignment.center,
                                              child: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF0669cd),
                                                size: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: (MediaQuery.of(context).size.width / 2 - 22.5),
                          child: Stack(children: [
                            SizedBox(
                              height: 500,
                              child: Image.asset(
                                'assets/airpodos.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: ((MediaQuery.of(context).size.width / 2 -
                                          22.5) /
                                      2 -
                                  85),
                              bottom: 0.0,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "AirPods",
                                      style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 5),
                                      child: const Text(
                                        "Mega power. Mini size.",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                "Learn More",
                                                style: TextStyle(
                                                    color: Color(0xFF0669cd),
                                                    fontSize: 20),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 2.5),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xFF0669cd),
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 25),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  "Buy",
                                                  style: TextStyle(
                                                      color: Color(0xFF0669cd),
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2.5),
                                                  alignment: Alignment.center,
                                                  child: const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Color(0xFF0669cd),
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        )
                      ],
                    )),
                Container(
                  color: const Color(0xFFf5f5f7),
                  padding: const EdgeInsets.only(left: 250, right: 250),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                      ),
                      const Text(
                        "No-Cost EMI available for purchases made using qualifying credit cards on 3, 6 or 12 month tenures only. Offer available on qualifying purchases made after 1:30 PM IST on January 20, 2022 and before 11:59 PM IST on March 24, 2022. Minimum order spend applies as per your credit card’s issuing bank threshold. Offer cannot be combined with Apple Store for Education or Corporate Employee Purchase Plan pricing. Credit card eligibility is subject to terms and conditions between you and your credit card issuing bank. Offer may be revised or withdrawn at any time without any prior notice. Offer valid for limited period. Terms & conditions apply.\n\nRepresentative example: Based off a 12 month tenure. ₹69900 total cost includes 15% pa and No Cost EMI savings of ₹5363, paid over 12 months as 12 monthly payments of ₹5825.\n\nStatements are representative of the individual user experience of iPhone model stated. Animated Memojis require iPhone X or later. Memoji professionally animated.\n\nApple TV+ is ₹99/month after free trial. One subscription per Family Sharing group. Offer is valid for 3 months after eligible device activation. Plan automatically renews until cancelled. Restrictions and other terms apply.\n",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.justify,
                      ),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text("This website is a replica of original apple website developed just for practise.", style: TextStyle(fontSize: 12),),
                          Spacer(),
                          Text("India",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 15))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  barSetter() {
    if(MediaQuery.of(context).size.width <= 1100){
      return const MiniBar();
    }else{
      return const MyNavigationBar();
    }
  }
}
