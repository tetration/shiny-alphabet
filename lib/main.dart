import 'package:flutter/material.dart';
import 'LoginPage.dart';

import 'src/blocs/bloc.dart';
import 'src/blocs/game_bloc.dart';
import 'src/screens/game_home.dart';
import 'src/blocs/bloc.dart';
import 'src/blocs/game_bloc.dart';
import 'src/screens/game_page_one.dart';
import 'src/screens/game_page_two.dart';
void main() => runApp(MyApp());
//final bloc = GameBloc();
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


class MyApp1 extends StatelessWidget {
  final bloc = GameBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pair game',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: BlocProvider(
        bloc: bloc,
        child: GameHomePage(),
      ),
    );
  }
}