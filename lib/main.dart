import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_insta/bloc/app_theme_bloc.dart';
import 'package:flutter_insta/screens/feed.dart';
//import 'package:flutter_insta/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
        create: (context) => AppThemeBloc(),
        child: BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state){
            return MaterialApp(
              title: 'Flutter Social Media',
              debugShowCheckedModeBanner: false,
              theme: state.theme,
              home: FeedScreen(),
            );
          },
        ),
    );
  }
}
