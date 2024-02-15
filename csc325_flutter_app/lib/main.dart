import 'package:flutter/material.dart';

//main for running the app
void main(){
  runApp(MyApp());

}

//stateless widget that covers the entire screen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Calculator App"),
          centerTitle: true,),
          //need to look into a better way to go about making a grid of widgets
          //how to center them
          //how to turn them into buttons
        body: Column(
          children: const[
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text("1")),
                  Expanded(
                    flex: 4,
                    child: Text("2")),
                  Expanded(
                    flex: 4,
                    child: Text("3")),
                  Expanded(
                    flex: 4,
                    child: Text("+")),
                ],
              )),
            /*Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text("4")),
                  Expanded(
                    flex: 4,
                    child: Text("5")),
                  Expanded(
                    flex: 4,
                    child: Text("6")),
                  Expanded(
                    flex: 4,
                    child: Text("-")),
                ],
              )),
              Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text("7")),
                  Expanded(
                    flex: 4,
                    child: Text("8")),
                  Expanded(
                    flex: 4,
                    child: Text("9")),
                  Expanded(
                    flex: 4,
                    child: Text("*")),
                ],
              )),
              Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Text("=")),
                  Expanded(
                    flex: 4,
                    child: Text("0")),
                  Expanded(
                    flex: 4,
                    child: Text("Clear")),
                  Expanded(
                    flex: 4,
                    child: Text("/")),
                ],
              )),*/    
          ]
        ),
      ) 
    );
  }
}
