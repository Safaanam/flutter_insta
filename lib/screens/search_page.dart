import 'package:flutter/material.dart';
import 'package:flutter_insta/models/search_json.dart';
import 'package:flutter_insta/models/search_category_item.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return new Scaffold(
      body: SingleChildScrollView(
         child: Column(
            children: <Widget>[
                SafeArea(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                        width: 15,
                      ),
                      Container(
                        width: size.width - 30,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).accentColor,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            )
                          ),
                          style: Theme.of(context).textTheme.bodyText2,
                          cursorColor: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                      child: Row(
                          children: List.generate(searchCategories.length, (index){
                            return CategoryStoryItem( name: searchCategories[index],);}
                           )
                      ),
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 1,
                  runSpacing: 1,
                  children: List.generate(searchImages.length, (index){
                    return Container(
                      width: (size.width-3)/3,
                      height: (size.width-3)/3,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(searchImages[index]),fit: BoxFit.cover)
                      ),
                    );
                  }),
                )
            ],
         )
      ),
    );
  }
}