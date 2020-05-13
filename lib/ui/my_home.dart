import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_one/bloc/greet/bloc.dart';

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("HOME WIDGET BUILD");
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple BLoC Test"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GreetWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                color: Colors.blueAccent,
                child: Text(
                    "Howdy!",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<GreetBloc>(context)..add(HowdyGreetEvent());
                }
                ),
              FlatButton(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                  color: Colors.green,
                  child: Text(
                    "What's up!",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<GreetBloc>(context)..add(WhatUpGreetEvent());
                  }
              ),
              FlatButton(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                  color: Colors.red,
                  child: Text(
                    "You're Rock!",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<GreetBloc>(context)..add(YouAreRockGreetEvent());
                  }
              ),
            ],
          )
        ],
      )
    );
  }
}

class GreetWidget extends StatelessWidget {
  const GreetWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GreetBloc, GreetState> (
      builder: (context, state) {
        print("GREET WIDGET BUILD!");
        String _greet = "Loading...";
        if(state is InitialGreetState) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: CircularProgressIndicator(),
          );
        }

        if(state is ErrorGreetState) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                  "Error!",
                style: GoogleFonts.oswald(fontSize: 50.0),
              ),
            ),
          );
        }

        if(state is HowdyGreetState) {
          _greet = state.howdyGreet;
        }
        if(state is WhatUpGreetState) {
          _greet = state.whatUpGreet;
        }
        if(state is YouAreRockGreetState) {
          _greet = state.youAreRockGreet;
        }
        return buildGreet(_greet);
      },
    );
  }

  Container buildGreet(String greet) {
    return Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Text(
            "$greet",
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
        );
  }
}
