import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Lastpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        bloc: CounterBloc(),
        child: Lastpage(),
      ),
      
    );
  }
}

  

enum CounterEvent {increment}

class CounterBloc extends Bloc<CounterEvent,int>  {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    switch(event){
      case CounterEvent.increment:
        yield currentState + 1;
        break;
    } 
  }



  
}