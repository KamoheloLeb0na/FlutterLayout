import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int likes = 40;
  var liked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0,0),
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Image.asset("assets/images/lake.jpg"),
                    ),
                  ],
                ),
              ),

              //This is the beginning of the Place Detail Section
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(child: Text("Oeschinen Lake Campground",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                            Container(child: Text("Kandersteg, Switzerland",style: TextStyle(fontWeight: FontWeight.w300),)),
                          ],
                        ),

                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: () {
                            setState(() {
                              liked = !liked;
                              if(liked){
                                likes += 1;
                              }else{
                                likes -=1;
                              }
                            });
                          }, icon: Icon(Icons.star),color: liked ? Colors.red : Colors.black,iconSize: 30,),
                          Text("$likes",style: TextStyle(fontSize: 17),),

                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Icon section
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.phone ),
                          Text("Call")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.navigation ),
                          Text("Route")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.share ),
                          Text("Call")
                        ],
                      ),
                    ),
                  ],
                ),
              ),//End of Icon Section

              //Start of the description section
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Lake Oeschinen lies at the foot of the Bluemilsalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the largest Alpine lakes, A gondola ride from the Kandersteg followed by a half-hour walk through pastures and pine forest , leads you to the lake which warms to 20 degrees celcius in the summer . Activities enjoyed here include rowing  and riding the summer toboggan run",style: TextStyle(fontSize: 16),),
              )
              //End of the description section
            ],
          ),
        ),
      ),
    );
  }
}
