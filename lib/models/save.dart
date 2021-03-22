import 'package:flutter/material.dart';

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> with SingleTickerProviderStateMixin {
  bool isSave = false;
  AnimationController _controller;
  Animation<Color> _colorAnimation;
  Animation<double> _sizeAnimation;
  Animation _curve;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.green[600]).animate(_curve);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 5.5, end: 6),
          weight: 50,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 6, end: 5.5),
          weight: 50,
        ),
      ]
    ).animate(_curve);

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
            icon: ScaleTransition(
              scale: _sizeAnimation,
              alignment: Alignment.center,
              child: Icon(
                Icons.bookmark,
                color: _colorAnimation.value,
                size: _sizeAnimation.value,
              ),
            ),
            onPressed: () {
              isSave ? _controller.reverse() : _controller.forward();
            },
          );
        }
    );
  }
}