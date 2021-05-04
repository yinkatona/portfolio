import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AboutMe(), debugShowCheckedModeBanner: false);
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2 ,
                  child: ClipPath(
                    clipper: ContainerClipper(),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('ADEYINKA FATONA',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            backgroundColor: Colors.black12,
                            letterSpacing: 1.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'I\'m a self-taught Software Developer with a degree in Environmental Management and Toxicology. I have found coding intuitive and have pushed myself in the most effective way to achieve result.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'When I\'m not coding or involve in other engagements, I either watch a movie or spend quality time with friends and family.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.black,
                          margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  color: Colors.blueGrey,
                                ),
                                title: Text('+2348038401270',
                                    style: TextStyle(color: Colors.blueGrey))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.black,
                          margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.blueGrey,
                                ),
                                title: Text('yinkafatona@gmail.com',
                                    style: TextStyle(color: Colors.blueGrey))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              // top: screenHeight * (1 / 8) - 100 / 2,
              left: screenWidth * 0.30,
              bottom: screenHeight - 220,
              // right: 30,
              child: Container(
                margin: const EdgeInsets.all(4),
                height: 170,
                width: 150,
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey),
                child: Container(
                  padding: EdgeInsets.all(0),
                  margin: const EdgeInsets.all(1.5),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height - 15);
    path.quadraticBezierTo(
        size.width /2, size.height, size.width, size.height - 15);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
