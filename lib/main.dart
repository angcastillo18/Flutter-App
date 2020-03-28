import 'package:flutter/cupertino.dart';
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
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
              child:Image.asset('assets/space1.jpg') ),
          Expanded(
            flex:2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.brown,
              child: Text('1')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amberAccent,
                child: Text('2')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.redAccent,
                child: Text('3')
            ),
          ),
        ],
      )

    /* Expanded es como flexbox
    Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color:Colors.redAccent,
            child: 
              Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color:Colors.indigoAccent,
            child:
            Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color:Colors.brown,
            child:
            Text('Three'),
          )
        ],
      )
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('hello world'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: 
            Text('boton'),
          ),
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(30.0),
            child: Text('Container'),
          )
        ],
      ),*/
      /*Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        margin: EdgeInsets.all(55.0),
        color:Colors.grey[300],
        child: Text('hello'),

      ),*/
      /*Center(
        child:
        FlatButton.icon(
          onPressed: (){
            print('you clicked me');
          },
          icon: Icon(
              Icons.desktop_windows
          ),
          textColor: Colors.white,
          label: Text('click me'),
          color: Colors.lightBlue,
        ),*/
        //Icon(
        //  Icons.desktop_windows,
        //  color: Colors.lightBlue,
        //  size: 50.0,)
            //Image.asset('assets/space1.jpg'),
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
        

      ,floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        },
        backgroundColor:Colors.grey[600],
      ),

    );
  }
}

