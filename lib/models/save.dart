import 'package:flutter/material.dart';

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> with SingleTickerProviderStateMixin {
  bool isSave = false;
  AnimationController _controller;
  Animation<Color> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.green[600]).animate(_controller);

    _controller.addListener(() {
      // print(_controller.value);
      // print(_colorAnimation.value);
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isSave = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isSave = false;
        });
      }
    });
  }

  // dismiss the animation when widget exits screen
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, _){
          return IconButton(
            icon: Icon(
              Icons.bookmark,
              color: _colorAnimation.value,
              size: 30,
            ),
            onPressed: () {
              isSave ? _controller.reverse() : _controller.forward();
            },
          );
        }
    );
  }
}