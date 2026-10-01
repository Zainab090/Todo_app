import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Studentlist extends StatelessWidget {
  const Studentlist({super.key});
  Widget s_info(String name, int rollno, String dob){
    return Container(
      height: 100,
      width: 300,

      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Center(child: Text(' Name: $name \n Roll no: $rollno \t DOB: $dob')),
    );
  }

  @override
  Widget build(BuildContext context) {
    double customHeight = 100;
    double customWidth = 300;
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      appBar: AppBar(title: Text("Classic todo"),
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text("Students", //textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                fontFamily: 'TimesNewRoman',

              ),),
            Row(
              children: [
                s_info('Alice', 10045, '22-7-04'),


              ],
            ),
            Row(
              children: [s_info('Alex', 10046, '29-7-03'),],
            ),

            Row(children: [s_info('Sara', 10047, '12-8-02')],),

          ],
        ),
      ),
      floatingActionButton: Container(
        child: Icon(Icons.add, size: 50),
        decoration: BoxDecoration(shape: BoxShape.circle,
            color: Colors.lightBlue),
      ),


    );
  }
}