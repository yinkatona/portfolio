import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    'Flutter Developer',
                        style: TextStyle(fontSize: 32)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    "Adeyinka Fatona",
                    style: TextStyle(fontSize: 28)),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.mail),
                      SizedBox(width: 10,),
                      Text('Yinkafatona@gmail.com', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(width: 10,),
                      Text('+2348038401270', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on_outlined),
                        SizedBox(width: 20,),
                        Text('Lagos Nigeria', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.chat_outlined),
                      SizedBox(width: 10,),
                      Text('twitter:@yinkafatona', style: TextStyle(fontSize: 20)  ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
