import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_insta/models/post_model.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class ImageScreen extends StatefulWidget {
  static String routeName = '/ImageScreen';
  final Post post;
  ImageScreen({this.post});
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> with SingleTickerProviderStateMixin {
  GifController controller1;
  int index=0;
  File _image;

  @override
  void initState() {
    controller1 = GifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_){
      controller1.repeat(min: 1,max: 32,period: Duration(milliseconds: 900));
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
  }

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }

  void _modalAnimation(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration:
            BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20) ,topRight: Radius.circular(20)),
              color: Theme.of(context).accentColor,
            ),
            height: 200,
            child: GifImage(
              controller: controller1,
              image: AssetImage("assets/images/success.gif"),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40.0),
                width: double.infinity,
                height: 117.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                iconSize: 30.0,
                                onPressed: () => Navigator.pop(context),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ListTile(
                                  leading: Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black45,
                                          offset: Offset(0, 2),
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      child: ClipOval(
                                        child: Image(
                                          height: 50.0,
                                          width: 50.0,
                                          image: AssetImage(posts[index].authorImageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    posts[index].authorName,
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: () {
                _imgFromCamera();
              },
                child: Text(
                  'Click',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0,),
                ),
              ),
              RaisedButton(onPressed: () {
                _imgFromGallery();
                },
                child: Text(
                  'Pick from Gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0,),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.only(top: 0.0),
                width: 375.0,
                height: 450.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                 child:  _image != null
                     ? Image.file(_image, fit: BoxFit.fitHeight)
                     : Text('     Your image will appear here', style: TextStyle(fontStyle: FontStyle.italic),),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: () => _modalAnimation(context),
                child: Text(
                  'Post',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0,),
                ),
              ),

            ],
          )
      ),
    );
  }
}

