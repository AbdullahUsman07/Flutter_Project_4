import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ryan-1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3),
                          ],
                        )),
                        child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Ryan Gosling',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '44 Videos',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Text(
                                      '10.7M Followers',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20.0),
                                    ),
                                  ],
                                )
                              ],
                            ))),
                  ),
                ),
              ),
              SliverList(
                  delegate:SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ryan Thomas Gosling is a Canadian actor. Prominent in both independent films and major studio features, his films have grossed over \$2 billion worldwide. Gosling has received various accolades, including a Golden Globe Award, and nominations for three Academy Awards, two British Academy Film Awards and a Primetime Emmy Award.",
                      style: TextStyle(color:Colors.grey,height: 1.5),),
                   SizedBox(height: 20.0,),
                  Text('Born',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                   SizedBox(height: 10.0,),
                  Text('Novermber 12, 1980,    London,  Ontario',style: TextStyle(color:Colors.grey),),
                  SizedBox(height: 20,),
                  Text('Nationality',style:TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0,),
                  Text('Canadian',style: TextStyle(color:Colors.grey),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(  
                      scrollDirection: Axis.horizontal,
                      children: [
                      makeVideo('assets/images/ryan-2.jpg'),
                      makeVideo('assets/images/ryan-3.jpg'),
                      makeVideo('assets/images/ryan-4.jpg'),
                      ]
                    ),
                  ),
                  SizedBox(height: 120,),
                  ],
                )
              )]))
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child:Container( 
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                height: 50, 
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(40),
                  color:Colors.yellow[700],
                ),
                child: Align(child: Container(child: Text('Follow',style: TextStyle(color: Colors.white,fontSize: 17.0,fontWeight: FontWeight.bold),),),),
              )
            ))
        ],
      ),
    );
  }
}

Widget makeVideo(String imagePath){
  return AspectRatio(
    aspectRatio: 1.5/1,
    child: Container(  
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(20),
        image:DecorationImage(
          image: AssetImage(imagePath),
          fit:BoxFit.cover,
          
          ),
      ),
      child:Container( 
        decoration: BoxDecoration(  
          gradient: LinearGradient( 
            begin: Alignment.bottomRight,
            colors: [ 
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.3),
            ]
          )
        ),
        child: Align(
          child:Icon(
            Icons.play_arrow,color:Colors.white,size: 70,
          ) ,),
      )
    ),
    );
}