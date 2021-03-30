import 'package:flutter/material.dart';

class ProfileTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.60 - 56,
      padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24,),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        physics: BouncingScrollPhysics(),
        children: List.generate(12, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/photo_" + index.toString() + ".jpg"),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ProfileTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.60 - 56,
      padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24,),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        physics: BouncingScrollPhysics(),
        children: List.generate(18, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/pic_" + index.toString() + ".jpg"),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}

