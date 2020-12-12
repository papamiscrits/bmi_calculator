import 'package:flutter/material.dart';
import 'input_page.dart';
import 'main.dart';

class Second_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
     body: Bmical(),
    );
  }
}

class Bmical extends StatefulWidget {
  @override
  _BmicalState createState() => _BmicalState();
}

class _BmicalState extends State<Bmical> {
  int x;
  int y;
  int z;
  _InputPageState z=_InputPageState(x, y);

  @override

  Widget build(BuildContext context) {
    print(z.x);

    return Container();
  }
}
