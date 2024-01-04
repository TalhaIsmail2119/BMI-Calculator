import 'package:day_19/page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  Color bgClr = Color(0xff090C1F);

  Color cardClr = Color(0xff414141);
  bool ismale = true;
  int weight = 60;
  int age = 23;
  double height = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090C1F),
      appBar: AppBar(
        backgroundColor: Color(0xff090C1F),
        title: Center(child: Text("BMI Calculation")),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Card(
                        color: ismale == true
                            ? Color.fromARGB(255, 4, 85, 77)
                            : cardClr,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Card(
                        color: ismale == false
                            ? Color.fromARGB(255, 4, 85, 77)
                            : cardClr,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    flex: 5,
                  ),
                ],
              ),
              flex: 5,
            ),
            //2nd Part
            Expanded(
              child: Card(
                color: cardClr,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.toStringAsFixed(0)}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 45)),
                        Text("cm",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.green.shade900,
                        inactiveColor: Colors.green.shade600,
                        thumbColor: Colors.green.shade200,
                        min: 70,
                        max: 200,
                        value: height,
                        onChanged: (val) {
                          setState(() {
                            height = val;
                          });
                        })
                  ],
                ),
              ),
              flex: 5,
            ),
            //3rd Part
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: cardClr,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text(
                            "$weight",
                            style: TextStyle(color: Colors.white, fontSize: 45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {
                                      weight--;
                                    });
                                  }

                                  print("weight is $weight");
                                },
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Card(
                      color: cardClr,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text(
                            "$age",
                            style: TextStyle(color: Colors.white, fontSize: 45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (age > 1) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    flex: 5,
                  ),
                ],
              ),
              flex: 5,
            ),
            MaterialButton(
              onPressed: () {
                double h = height / 100;
                double w = weight.toDouble();

                double heightSquare = h * h;
                double result = w / heightSquare;

                //print("Our bmi issss$result");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => page2(
                          cal: result,
                        )));
              },
              height: 55,
              color: Colors.blueGrey,
              minWidth: double.infinity,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
