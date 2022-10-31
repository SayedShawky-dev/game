import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftImage = 1;
  var rightImage = 2;

  void imageChange(){
    leftImage = Random().nextInt(8) + 1;
    rightImage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text('لعبه تطابق',),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( leftImage == rightImage? 'نجحت ':
            'حاول المحاوله', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Row(
            children: [
               Expanded(
                   child: TextButton(
                     onPressed: (){
                       setState(() {
                         imageChange();
                       });

                     },
                       child: Image.asset('images/image-$leftImage.png'))),
               Expanded(
                   child: TextButton(
                       onPressed: (){
                         setState(() {
                           imageChange();
                         });

                       },
                       child: Image.asset('images/image-$rightImage.png'))),

            ],
          )

        ],
      ),
    );
  }
}
