import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'second_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {



  double _currentSliderValue = 20;
   Color malecardcolor= Color(0xFF4B4E84);
   Color femalecardcolor= Color(0xFF1D1E33);
   int height ;
   int weight ;
   int age =10;
   int h;
   int w;
  void updatecardcolor(int gender){
    if(gender==1){
      femalecardcolor= Color(0xFF4B4E84);
    }
    else{
      malecardcolor=femalecardcolor;
    }

  }

  _InputPageState({this.height,this.weight });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(

        children: [
          Expanded(child: Row(
            children: [

                Expanded(child: reusableWIdget(
                   colour: Color(0xFF1D1E33),
                   cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[

                       Icon(FontAwesomeIcons.mars,
                           size: 120.0),
                       SizedBox(
                         height: 15.0,
                       ),

                       Text("Male",
                       style: TextStyle(
                         fontSize: 25.0,
                         fontWeight: FontWeight.w900,
                       ) ),
                       Flexible(
                         child: GestureDetector(
                           onTap: (){
                             setState(() {
                               updatecardcolor(1);
                             });
                           },
                         ),
                       )

                     ],
                   )
               ),),

              Expanded(child: reusableWIdget(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(FontAwesomeIcons.venus,
                          size: 120.0),
                      SizedBox(
                        height: 15.0,
                      ),

                      Text("Female",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900,
                          ) ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              updatecardcolor(2);
                            });
                          },
                        ),
                      )

                    ],
                  )

              ),),
            ],
          )),
          Expanded(child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: reusableWIdget(
                  colour: Color(0xFF1D1E33),
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Height',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                    ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                         height.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                          ),
                        ),
                        Text('cm',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Flexible(
                      child: Slider(
                          value: height.toDouble(),
                          min: 10,
                          max: 120,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double newvalue){
                            setState(() {
                              height=newvalue.toInt();
                            });
                          },
                        ),
                    ),
                  ],
                ),),
              ),] ),
          ),

          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: reusableWIdget(
                  colour: Color(0xFF1D1E33),
                cardChild: Column(

                  children: [

                    Column(

                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Weight',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            )),
                        Text(weight.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                          ),

                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                color: Colors.grey[600],
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.remove,
                                  size: 55,
                                ),

                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            MaterialButton(

                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              color: Colors.grey[600],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 55,

                              ),
                              padding: EdgeInsets.all(8),
                              shape: CircleBorder(),
                            )
                          ],
                        )
                      ],
                    ),

                  ] ,
                ),

              ),),
              Expanded(child: reusableWIdget(
                  colour: Color(0xFF1D1E33),
                cardChild: Column(

                  children: [

                    Column(

                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Age',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            )),
                        Text(age.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30.0,
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                color: Colors.grey[600],
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.remove,
                                  size: 55,
                                ),

                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            MaterialButton(

                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              color: Colors.grey[600],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 55,

                              ),
                              padding: EdgeInsets.all(8),
                              shape: CircleBorder(),
                            )
                          ],
                        )
                      ],
                    ),

                  ] ,
                ),
              ),),
            ],

          )
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second_page()),
                );
              },

              child: Container(
                  margin: EdgeInsets.all( 10.0),
                  decoration:BoxDecoration(
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
                      Text('Calculate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 50.0,
                          )
                      ),


                    ],
                  )

              )
          )
        ],
      ),



    );
  }
}

class reusableWIdget extends StatelessWidget {


  reusableWIdget({this.colour,this.cardChild});
   Color colour;
   Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin:EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      height: 200,
      width: 170,
    );
  }
}




