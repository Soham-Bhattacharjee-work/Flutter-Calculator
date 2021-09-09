import 'package:flutter/material.dart';
import './Buttons.dart';
import './Buttonsoperator.dart';
void main() {
  runApp(MyFirstApp());
}



class MyFirstApp extends StatefulWidget {
  MyFirstApp({Key? key}) : super(key: key);
  @override
  _MyCalculatorApp createState() => _MyCalculatorApp();
}

class _MyCalculatorApp extends State<MyFirstApp>{
  int firstnumber=0;
  int secondnumber=0;
  String history='';
  String Finalresult='';
  String result='';
  String operation='';
  void OnPressing(String value)
  {
    print(value);
    if(value == "C")
      {
        firstnumber=0;
        secondnumber=0;
        history="";
        result="";
        Finalresult="";
        operation="";
      }
    else if(value=="+"||value=="-"||value=="*"||value=="/")
      {
        firstnumber = int.parse(Finalresult);
        result = "";
        operation=value;
      }
    else if(value == "=")
      {
        secondnumber = int.parse(Finalresult);
        if(operation=="+")
          {
            result = (firstnumber+secondnumber).toString();
            history = firstnumber.toString()+operation.toString()+secondnumber.toString();
          }
        else if(operation=="-")
        {
          result = (firstnumber-secondnumber).toString();
          history = firstnumber.toString()+operation.toString()+secondnumber.toString();
        }
        else if(operation=="*")
        {
          result = (firstnumber*secondnumber).toString();
          history = firstnumber.toString()+operation.toString()+secondnumber.toString();
        }
        else if(operation=="/")
        {
          result = (firstnumber/secondnumber).toString();
          history = firstnumber.toString()+operation.toString()+secondnumber.toString();
        }
      }
    else{
      result = int.parse(Finalresult+value).toString();}
    setState(() {
      Finalresult=result;
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Calculator')),

      ),
       body: Container(
         color: Colors.black,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,

           children: [
             Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children:[Container(
                   margin: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 30.0),
                   child:Text(history,style: TextStyle(fontSize: 30,color: Colors.grey,),),)]
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children:[Container(
                 margin: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 30.0),
                 child:Text(Finalresult,style: TextStyle(fontSize: 60,color: Colors.white,),),)]
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Buttonsoperator(text:"=",OnClicked:OnPressing),
                 Buttons(text: "0",textSize: 24,OnClicked: OnPressing,),
                 Buttonsoperator(text:"C",OnClicked: OnPressing,),
                 Buttonsoperator(text:"+",OnClicked: OnPressing,),

               ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Buttons(text: "9",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "8",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "7",textSize: 24,OnClicked: OnPressing,),
                 Buttonsoperator(text:"-",OnClicked: OnPressing,),

               ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Buttons(text: "6",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "5",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "4",textSize: 24,OnClicked: OnPressing,),
                 Buttonsoperator(text:"*",OnClicked:OnPressing ,),

               ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Buttons(text: "9",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "9",textSize: 24,OnClicked: OnPressing,),
                 Buttons(text: "9",textSize: 24,OnClicked: OnPressing,),
                 Buttonsoperator(text:"/",OnClicked: OnPressing,),

               ],)],)
       ),
       // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
