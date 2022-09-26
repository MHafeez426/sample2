import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: PlayPause(),debugShowCheckedModeBanner: false,));
}
class PlayPause extends StatefulWidget{

  @override
  State<PlayPause> createState() => _PlayPauseState();
}

class _PlayPauseState extends State<PlayPause> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  bool isAnimating = false;
  @override
  void initState(){
    super.initState();
    _animationController=AnimationController(vsync: this,
    duration: const Duration(seconds: 2),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Center(child:Column(children:[ GestureDetector(
        onTap: (){changeIcon();},
        child: AnimatedIcon(size: 200,
        color: Colors.green,
        icon: AnimatedIcons.menu_arrow,
        progress: _animationController,),),
      SizedBox(height: 100,
      ),ElevatedButton(onPressed: (){dispose();}, child:Text("close"))],),),
    );
  }
  void changeIcon(){
    setState(() {
      isAnimating = !isAnimating;
      isAnimating? _animationController.forward() : _animationController.reverse();
    });
    @override
    void dispose(){
      _animationController.dispose();
      super.dispose();
    }
  }
}