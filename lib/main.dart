import 'package:flutter/material.dart';

void main() {
  runApp(counter());
}

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int pointA = 0;
  int pointB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointA',
                        style: TextStyle(fontSize: 180),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            pointA++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          // Respond to button press
                          setState(() {
                            pointA += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          // Respond to button press
                          setState(() {
                            pointA += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(flex: 30)
                    ]),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 100,
                      indent: 12,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointB',
                        style: TextStyle(fontSize: 180),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          // Respond to button press
                          setState(() {
                            pointB++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          // Respond to button press
                          setState(() {
                            pointB += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                        onPressed: () {
                          // Respond to button press
                          setState(() {
                            pointB += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(flex: 30)
                    ]),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(140, 40),
                ),
                onPressed: () {
                  setState(() {
                    pointA = 0;
                    pointB = 0;
                  });
                },
                child: Text(
                  'reset',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
