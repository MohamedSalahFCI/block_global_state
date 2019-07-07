import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Lastpage extends StatefulWidget {
  @override
  _LastpageState createState() => _LastpageState();
}

class _LastpageState extends State<Lastpage> {
  @override
  Widget build(BuildContext context) {
   final CounterBloc _counterbloc = BlocProvider.of<CounterBloc>(context);
   return Scaffold(
     appBar:AppBar(
       title: Text('bloc'),
     ) ,
     body: BlocBuilder(
       bloc: _counterbloc,
       builder: (BuildContext context,int Count){
         return Text(
           '${Count}'
         );

       },
     ),

     floatingActionButton: FloatingActionButton(
       onPressed: ()=>_counterbloc.dispatch(CounterEvent.increment),
     ),
   );
  }
}