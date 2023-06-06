import 'package:flutter/material.dart';
import 'package:text_responsiveness/common/appstyle.dart';
import 'package:text_responsiveness/common/reusable_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("This is a text ressponsiveness test ", style: appstyle(40, Colors.orange, FontWeight.bold),),

          SizedBox(height: 20,),

          ReusableText(text:"This is a text ressponsiveness test ", style: appstyle(40, Colors.orange, FontWeight.bold),),

          // solution to text adaptabilty
          FittedBox(child: Text("This is a text ressponsiveness test ", style: appstyle(40, Colors.orange, FontWeight.bold),)),

          SizedBox(height: 20,),

          ReusableText(text:"This is a text ressponsiveness test ", style: appstyle(40, Colors.orange, FontWeight.bold),)


        ],
      ),
    );
  }
}