import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){ 
  runApp(const MaterialApp( 
    debugShowCheckedModeBanner: false, 
    home: HomePage()
  ),);
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  HomePageState createState()=> HomePageState();
}

class HomePageState extends State<HomePage>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: <Widget>[
          CustomScrollView( 
            slivers: <Widget>[
              SliverAppBar( 
                expandedHeight: 450,
                flexibleSpace: FlexibleSpaceBar(  
                  background: Container(  
                    decoration: const BoxDecoration( 
                      image: DecorationImage( 
                        image:AssetImage('assets/images/ryan-1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin:Alignment.bottomRight, 
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3),
                          ],
                        )
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(20.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Ryan Gosling',
                            style: TextStyle( 
                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40,
                            ),),
                            const SizedBox(height: 20.0,),
                            Row(
                              children: <Widget>[
                                Text('44 Videos',style:TextStyle(color:Colors.grey,fontSize:20.0),),
                                const SizedBox(width: 60,),
                                Text('10.7M Followers',style: TextStyle(color: Colors.grey,fontSize:20.0),),
                              ],)
                          ],
                        )
                      ) 
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}