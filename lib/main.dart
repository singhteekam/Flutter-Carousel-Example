import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
     
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel=new Container(
      height: 200.0,
      child: new Carousel(
        boxFit:BoxFit.cover,
        images:[
          NetworkImage("https://images.pexels.com/photos/1884306/pexels-photo-1884306.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3560451/pexels-photo-3560451.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3052725/pexels-photo-3052725.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3041347/pexels-photo-3041347.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/4098908/pexels-photo-4098908.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ],
        autoplay:false,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 1000),
        //dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.red,
        dotBgColor: Colors.transparent,
      ),
    );

    Widget image_carousel2=new Container(
      height: 200.0,
      child: new Carousel(
        boxFit:BoxFit.cover,
        images:[
          NetworkImage("https://images.pexels.com/photos/4066041/pexels-photo-4066041.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3560451/pexels-photo-3560451.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3052725/pexels-photo-3052725.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/3041347/pexels-photo-3041347.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage("https://images.pexels.com/photos/4098908/pexels-photo-4098908.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ],
        autoplay:true,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 1000),
        //dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.red,
        dotBgColor: Colors.transparent,
        autoplayDuration: Duration(seconds:2),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title:Text("Carousel Example")
      ),
      body: Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: image_carousel,
          ),
          Padding(
            padding: const EdgeInsets.only(top:15),
            child: image_carousel2,
          ),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        child:Text("Built by @TS❤️",textAlign: TextAlign.center, style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
       color:Colors.grey
      ),
    );
  }
}