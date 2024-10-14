import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:Container(
        width: double.infinity,
        height: double.infinity,
        
          child:Center(child: Text('Lun Kha Penchod',style:TextStyle(fontSize: 40,color: Colors.black)),)
      ),
    );
  }

}