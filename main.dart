import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main(){
  runApp(MaterialApp(
    title: "Flutter Scaffold",
    home: myWidget(),
  ));
}

class myWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("I'm an App"),
        ),
        backgroundColor: Colors.red,
        body:
        //column1
        Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                BlueBox1(),
                BlueBox2(),
                BlueBox3(),
              ],
            ),
            //column2
            Column(
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    BlueBox1(),
                    Flexible(
                      fit:FlexFit.tight,
                      flex: 1,
                      child: GreenBox1(),
                    ),
                    BlueBox3(),
                  ],
                ),
                //column3
                Column(
                  children: [
                    SizedBox(height: 100),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,


                      children:[
                        BigBlueBox1(),
                        Flexible(
                          fit:FlexFit.tight,
                          flex: 1,
                          child: GreenBox2(),
                        ),
                        BigBlueBox3(),
                      ],

                    ),
                    //Column4
                    Column(
                      children: [
                        SizedBox(height: 100),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BlueBox1(),
                            BlueBox2(),
                            BlueBox3(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BlueBox1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 50,
      height: 50,
      decoration:BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text('1'),
    );
  }
}

class BigBlueBox1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 50,
      height: 100,
      decoration:BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text('1'),
    );
  }
}

class BlueBox2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 50,
      height: 50,
      decoration:BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text('2'),

    );
  }
}

class BlueBox3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 50,
      height: 50,
      decoration:BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text('3'),

    );
  }
}

class BigBlueBox3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 50,
      height: 100,
      decoration:BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text('3'),

    );
  }
}

class GreenBox1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 292,
      height: 50,
      decoration:BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
      child: Text('2'),

    );
  }
}

class GreenBox2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(0.0),
      width: 292,
      height: 100,
      decoration:BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
      child: Text('2'),

    );
  }
}