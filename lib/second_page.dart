import 'package:flutter/material.dart';
import 'input_page.dart';
import 'main.dart';
import 'dart:math';

class Second_page extends StatelessWidget {
  int height;
  int weight;

  Second_page(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Bmical(this.height, this.weight),
    );
  }
}

class Bmical extends StatefulWidget {
  int height;
  int weight;

  Bmical(this.height, this.weight);

  @override
  _BmicalState createState() => _BmicalState();
}

class _BmicalState extends State<Bmical> {
  double bmi;
  double x;
  int y;

  @override
  Widget build(BuildContext context) {
    bmi = widget.weight / pow(widget.height / 100, 2);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Your BMI is ',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),),
                Text(bmi.toStringAsFixed(1),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 120.0,
                  ),),
                if (bmi < 18)
                  Text('You are Underweight')
                else
                  if (bmi > 24)
                    Text('You are Overweight',
                      style: TextStyle(
                          fontSize: 20.0
                      ),),
                GestureDetector(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                }, child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.redAccent,
                    ),
                    height: 80.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('ReCalculate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 50.0,
                            )
                        ),


                      ],
                    )

                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
