import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

//main for running the app
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String firstInt='';
  String secondInt='';
  String operation='';
  String answer="";
  int dummy1=0;
  int dummy2=0;
  bool secondPart=false;
  bool rightafterequal=false;


  numberInput(String butpressed){
    if (butpressed=="Clear" || rightafterequal){
      firstInt='';
      secondInt='';
      operation='';
      answer="";
      secondPart=false;
      rightafterequal=false;
    }
    if (butpressed=="*" || butpressed=="/" ||butpressed=="+"||butpressed=="-"){
      operation=butpressed;
      secondPart=true;
    }
    else if (butpressed=="="){
      dummy1=int.parse(firstInt);
      dummy2=int.parse(secondInt);
      if (operation == "+"){
        answer=" = " + (dummy1+dummy2).toString();
      }
      if (operation == "-"){
        answer=" = " + (dummy1-dummy2).toString();
      }
      if (operation == "*"){
        answer=" = " + (dummy1*dummy2).toString();
      }
      if (operation == "/"){
        answer=" = " + (dummy1/dummy2).toString();
      }//need to find a way to restrict what they can do until they press clear
      rightafterequal=true;
    }
    else if (secondPart==false){
        firstInt+=butpressed;
      }
    else if (secondPart==true){
        secondInt+=butpressed;
      }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(    ///do i need to change
      home: Scaffold(
        appBar: AppBar(
          // remove debug thing
          backgroundColor: Colors.green,
          title: const Text("Calculator App"),
          //mess with fonts
          centerTitle: true,),
        
          //need to look into a better way to go about making a grid of widgets
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      // mess with colors here
                      onPressed: () {numberInput("1");},
                      child: const Text("1") 
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("2");},
                      child: const Text("2")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("3");},
                      child: const Text("3")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("*");},
                      child: const Text("*")
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("4");},
                      child: const Text("4") 
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("5");},
                      child: const Text("5")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("6");},
                      child: const Text("6")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("/");},
                      child: const Text("/")
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("7");},
                      child: const Text("7") 
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("8");},
                      child: const Text("8")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("9");},
                      child: const Text("9")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("+");},
                      child: const Text("+")
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("=");},
                      child: const Text("=") 
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: FloatingActionButton(
                      onPressed: () {numberInput("0");},
                      child: const Text("0")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("Clear");},
                      child: const Text("Clear")
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child:FloatingActionButton(
                      onPressed: () {numberInput("-");},
                      child: const Text("-")
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                firstInt + " " + operation + " " + secondInt + answer,
                textAlign: TextAlign.center)
            )
          ]
        ),
      ) 
   );
  }
}
