import 'package:flutter/material.dart';
import 'package:threedisplayok/widget/custom_icon.dart';
import 'package:ionicons/ionicons.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('HN'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deliver to",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Times Square",
                  style: TextStyle(fontSize: 17),
                )
              ],
            )
          ],
        ),
        actions: [
          CustomIconButton(icon: Icon(Icons.notifications_outlined)),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 12),
            child: CustomIconButton(icon: Icon(Icons.shopping_bag_outlined)),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 108, 123, 167),
                label: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 5,
                    ),
                    Text("What are you craving?")
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Specical Ofers",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 58, 191, 140),
              borderRadius: BorderRadius.circular(35),
            ),
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "30%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 50),
                      ),
                      Text(
                        "DISSCOUNT ONLY \nVALID FOR TODAY !",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, right: 5),
                  child: Image.asset(
                    "assets/images/hamburger.png",
                    height: 165,
                    width: 165,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageButton(
                    image: "assets/images/hamburgerbt.png", text: "Hambuger"),
                ImageButton(image: "assets/images/pizzabt.png", text: "Pizza"),
                ImageButton(
                    image: "assets/images/noodlebt.png", text: "Noodles"),
                ImageButton(image: "assets/images/meatbt.png", text: "Meat"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageButton(
                    image: "assets/images/vegetablebt.png", text: "Vegetables"),
                ImageButton(
                    image: "assets/images/dessetbt.png", text: "Dessert"),
                ImageButton(image: "assets/images/drinkbt.png", text: "Drink"),
                ImageButton(image: "assets/images/morebt.png", text: "More"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Disscount Guaranteed! V",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green),
                  ))
            ],
          ),
          Container(
            height: 300,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 200,
                    child: Card(
                      elevation: 0.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 165,
                                width: 165,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(201, 200, 209, 217),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "assets/images/pho1.png",
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mixed Salab Bonb...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text("1.5km  |  "),
                                  Icon(
                                    Icons.star,
                                    size: 19,
                                    color: Colors.yellow.shade700,
                                  ),
                                  Text("  4.8  (1.2k)")
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "S6.00",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 76, 187, 85),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("| "),
                                  Icon(
                                    Icons.motorcycle,
                                    color: Color.fromARGB(255, 76, 187, 85),
                                  ),
                                  Text(" s2.00"),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Icon(
                                    Ionicons.heart_outline,
                                    color: Colors.pink.shade300,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 200,
                    child: Card(
                      elevation: 0.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 165,
                                width: 165,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(201, 200, 209, 217),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "assets/images/pho1.png",
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mixed Salab Bonb...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text("1.5km  |  "),
                                  Icon(
                                    Icons.star,
                                    size: 19,
                                    color: Colors.yellow.shade700,
                                  ),
                                  Text("  4.8  (1.2k)")
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "S6.00",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 76, 187, 85),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("| "),
                                  Icon(
                                    Icons.motorcycle,
                                    color: Color.fromARGB(255, 76, 187, 85),
                                  ),
                                  Text(" s2.00"),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Icon(
                                    Ionicons.heart_outline,
                                    color: Colors.pink.shade300,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 200,
                    child: Card(
                      elevation: 0.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                height: 165,
                                width: 165,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(201, 200, 209, 217),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "assets/images/pho1.png",
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mixed Salab Bonb...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text("1.5km  |  "),
                                  Icon(
                                    Icons.star,
                                    size: 19,
                                    color: Colors.yellow.shade700,
                                  ),
                                  Text("  4.8  (1.2k)")
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "S6.00",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 76, 187, 85),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("| "),
                                  Icon(
                                    Icons.motorcycle,
                                    color: Color.fromARGB(255, 76, 187, 85),
                                  ),
                                  Text(" s2.00"),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Icon(
                                    Ionicons.heart_outline,
                                    color: Colors.pink.shade300,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommend For You 😍",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green),
                  ))
            ],
          ),
          Container(
            height: 100,
            child: ListView(
              padding: EdgeInsets.all(10),
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Chip(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Color.fromARGB(255, 252, 252, 252),
                    shape: StadiumBorder(
                        side: BorderSide(
                            width: 2, color: Color.fromARGB(255, 21, 166, 59))),
                    label: Text("All"),
                    avatar: Image.asset("assets/images/tick.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Chip(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Color.fromARGB(255, 252, 252, 252),
                    shape: StadiumBorder(
                        side: BorderSide(
                            width: 2, color: Color.fromARGB(255, 21, 166, 59))),
                    label: Text("Hamburger"),
                    avatar: Image.asset("assets/images/hamburgerbt.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Chip(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Color.fromARGB(255, 252, 252, 252),
                    shape: StadiumBorder(
                        side: BorderSide(
                            width: 2, color: Color.fromARGB(255, 21, 166, 59))),
                    label: Text("Pizza"),
                    avatar: Image.asset("assets/images/pizzabt.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Chip(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Color.fromARGB(255, 252, 252, 252),
                    shape: StadiumBorder(
                        side: BorderSide(
                            width: 2, color: Color.fromARGB(255, 21, 166, 59))),
                    label: Text("Drink"),
                    avatar: Image.asset("assets/images/drinkbt.png"),
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(201, 200, 209, 217),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        "assets/images/vegetariannoodle.png",
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Vegetarian Noodles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("1.5km  |  "),
                            Icon(
                              Icons.star,
                              size: 19,
                              color: Colors.yellow.shade700,
                            ),
                            Text("  4.8  (1.2k)")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.motorcycle,
                                  color: Color.fromARGB(255, 76, 187, 85),
                                ),
                                Text("S1.50 "),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(
                              Ionicons.heart_outline,
                              color: Colors.pink.shade300,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(201, 200, 209, 217),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        "assets/images/pho1.png",
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Vegetarian Noodles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("1.5km  |  "),
                            Icon(
                              Icons.star,
                              size: 19,
                              color: Colors.yellow.shade700,
                            ),
                            Text("  4.8  (1.2k)")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.motorcycle,
                                  color: Color.fromARGB(255, 76, 187, 85),
                                ),
                                Text("S1.50 "),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(
                              Ionicons.heart_outline,
                              color: Colors.pink.shade300,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(201, 200, 209, 217),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        "assets/images/pho1.png",
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Vegetarian Noodles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("1.5km  |  "),
                            Icon(
                              Icons.star,
                              size: 19,
                              color: Colors.yellow.shade700,
                            ),
                            Text("  4.8  (1.2k)")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.motorcycle,
                                  color: Color.fromARGB(255, 76, 187, 85),
                                ),
                                Text("S1.50 "),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(
                              Ionicons.heart_outline,
                              color: Colors.pink.shade300,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(201, 200, 209, 217),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        "assets/images/pho1.png",
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Vegetarian Noodles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("1.5km  |  "),
                            Icon(
                              Icons.star,
                              size: 19,
                              color: Colors.yellow.shade700,
                            ),
                            Text("  4.8  (1.2k)")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.motorcycle,
                                  color: Color.fromARGB(255, 76, 187, 85),
                                ),
                                Text("S1.50 "),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(
                              Ionicons.heart_outline,
                              color: Colors.pink.shade300,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp), label: "Oder"),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(Icons.payment_outlined), label: "E-Vallet"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: "Profile"),
      ]),
    );
  }
}
