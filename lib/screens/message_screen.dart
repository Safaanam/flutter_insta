import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter_insta/models/comment_model.dart';
import 'package:flutter_insta/models/post_model.dart';

class MessageScreen extends StatefulWidget {
  final Post post;

  MessageScreen({this.post});

  @override
    _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40.0),
              width: double.infinity,
              height: 117.0,
              decoration: BoxDecoration(
                color: Colors.white,
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
                              color: Colors.black,
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
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0 ,
                                ),
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
            Container(
              padding: EdgeInsets.only(top: 0.0),
              width: 375.0,
              height: 450.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left:40.0, top: 60.0),
                      child: Row(
                        children: <Widget>[
                          Text('To:',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                       ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter UserId',),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left:40.0, top: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text('Message:',
                            style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Message',),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed: () => {print('send'),},
                      color: Colors.green[300],
                      child: Text(
                        'Send',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0,),
                      ),

                    )
                ],
                )
              ),
            ),
            SizedBox(height: 10.0,),
            
          ],
        )
        ),
    );
  }
}
