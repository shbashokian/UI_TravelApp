import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/model/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int _selectedIndex = 0;
  double imageSize = 65;

  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: sizeH / 1.8,
              child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: sizeH / 2.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
                        image: DecorationImage(image: AssetImage(travelList[_selectedIndex].image), fit: BoxFit.cover),
                      )),

                  //Head Icons
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: Positioned(
                      top: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(121, 255, 255, 255)),
                            child: const Icon(
                              CupertinoIcons.back,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(121, 255, 255, 255)),
                            child: const Icon(
                              CupertinoIcons.heart,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //small travel icons
                  Positioned(
                    right: 0,
                    top: 80,
                    child: SizedBox(
                      width: 100,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageList(index);
                        },
                      ),
                    ),
                  ),

                  Positioned(
                    left: sizeW / 9,
                    bottom: sizeH / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            travelList[_selectedIndex].name,
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[_selectedIndex].location,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), side: BorderSide(color: Colors.grey, width: 1)),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Distance",
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(travelList[_selectedIndex].distance, style: TextStyle(color: Colors.blue.shade500, fontSize: 20, fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), side: BorderSide(color: Colors.grey, width: 1)),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Temp",
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(travelList[_selectedIndex].temp + '° C ', style: TextStyle(color: Colors.blue.shade500, fontSize: 20, fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), side: BorderSide(color: Colors.grey, width: 1)),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rating",
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(travelList[_selectedIndex].rating, style: TextStyle(color: Colors.blue.shade500, fontSize: 20, fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            ExpandableText(
                              travelList[_selectedIndex].description,
                              expandText: 'show more',
                              collapseText: 'show less',
                              maxLines: 3,
                              linkColor: Colors.blue,
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price:", style: TextStyle(fontSize: 18, color: Colors.grey)),
                                Text(
                                  travelList[_selectedIndex].price,
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                              child: const Icon(
                                CupertinoIcons.arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget imageList(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(border: Border.all(color: Colors.white, width: _selectedIndex == index ? 4 : 2), borderRadius: BorderRadius.circular(15), image: DecorationImage(fit: BoxFit.fill, image: AssetImage(travelList[index].image))),
              width: _selectedIndex == index ? imageSize + 15 : imageSize,
              height: _selectedIndex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
