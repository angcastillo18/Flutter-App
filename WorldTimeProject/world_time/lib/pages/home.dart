import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //como no tenemos appbar, entonces usamos SafeArea
      //para que no se mezcle el app con la barra de tareas
      body:SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'))
            ],
          ) ),
    );
  }
}
