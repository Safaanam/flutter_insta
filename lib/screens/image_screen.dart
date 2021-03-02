import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_insta/models/post_model.dart';

class ImageScreen extends StatefulWidget {
  final Post post;
  ImageScreen({this.post});
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  int index=0;
  File _image;
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

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
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
              RaisedButton(onPressed: () => {print('upload'),},
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

