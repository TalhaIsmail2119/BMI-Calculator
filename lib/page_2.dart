import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  //const page2({Key? key}) : super(key: key);
  dynamic cal;
  page2({
    this.cal,
  });
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        backgroundColor: Color(0xff090C1F),
        title: Row(
          children: [
            SizedBox(width: 75,),
            Text("BMI Results"),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orangeAccent,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 600,
              width: 360,
              color: Colors.transparent,
              child: Image.asset("assets/images/fatman.png",fit: BoxFit.cover,height: 300,
                width: 200,

              ),
            ),
            // SizedBox(
            //   height: 100,
            // ),
            Container(
              height: 60,
              width: 305,
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color(0xff090C1F),
              ),
              
              child:
              Center(
                child: Text(
                  " Your Body Mass Index is ${widget.cal.toStringAsFixed(2)}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
