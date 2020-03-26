import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home:Home(),
));
///hereda de StatelessWidget
///statelles widget can´t change over time, permite reusabilidad and HotReload
///Stateful widget can change over time
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primera app'),
        centerTitle: true,
        backgroundColor:Colors.grey[600],
      ),
      body: Center(
        child: Image.asset('assets/space1.jpg'),
            //image: AssetImage('assets/space2.jpg'),
            //NetworkImage('https://images.unsplash.com/photo-1579909990663-0a8557ca9785?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')

        //Text(
          //'Hello World',
          //style: TextStyle(
            //fontSize: 27.0,
            //fontWeight: FontWeight.bold,
            //letterSpacing: 2.0,
            //color: Colors.red[600],
           // fontFamily: 'IndieFlower',
         // ),
        //),
        
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
        backgroundColor:Colors.grey[600],
      ),

    );
  }
}

