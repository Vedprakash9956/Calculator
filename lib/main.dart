

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: calculator(),
    );
  }

}
class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  int num1=0,num2=0;
  String  res="",display="",operator="";
  void btnclick(String s)
  {
    if(s=="C")
      {
        display="";
        num1=0;
        num2=0;
        res="";
      }
    else if(s=="+"||s=="x"||s=="-"||s=="/")
      {
        num1=int.parse(display);
        res="";
        operator=s;
      }
    else if(s=="=")
      {
        num2=int.parse(display);
        if(operator=="+")
          {
            res=(num1+num2).toString();
          }
        else if(operator=="+")
        {
          res=(num1+num2).toString();
        }
        else if(operator=="-")
        {
          res=(num1-num2).toString();
        }
        else if(operator=="x")
        {
          res=(num1*num2).toString();
        }
        else if(operator=="/")
        {
          res=(num1/num2).toString();
        }

      }
    else
      {
        res=int.parse(display + s).toString();
      }
    setState(() {
      display=res;
    });

  }
  Widget custombutton(String btval){
    return Expanded(child:
    OutlineButton(
        padding: EdgeInsets.all(20.0),
        onPressed: ()=>btnclick(btval),
        child: Text(btval,
         style: TextStyle(
           fontSize: 25.0
         ),)
       ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Calculator",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomRight,
              child: Text(display,
              style: TextStyle(
                fontSize: 25.0
              ),),
            )),
            Row(
              children: <Widget>[
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("+")
              ],

            ),
            Row(
              children: <Widget>[
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("-")
              ],

            ),
            Row(
              children: <Widget>[
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("x")
              ],

            ),
            Row(
              children: <Widget>[
                custombutton("C"),
                custombutton("0"),
                custombutton("="),
                custombutton("/")
              ],

            )
          ]
        )
      ),
    );
  }
}