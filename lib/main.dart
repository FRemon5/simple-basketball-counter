import 'package:flutter/material.dart';

void main() {
  runApp(basketBallCounter());
}

// ignore: camel_case_types, must_be_immutable
class basketBallCounter extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  basketBallCounter({super.key});

  @override
  State<basketBallCounter> createState() => _basketBallCounterState();
}

// ignore: camel_case_types
class _basketBallCounterState extends State<basketBallCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Points Counter", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 35)),
                    Text("$teamAPoints", style: TextStyle(fontSize: 100)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: VerticalDivider(color: Colors.black, thickness: 3),
                ),
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 35)),
                    Text("$teamBPoints", style: TextStyle(fontSize: 100)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        minimumSize: Size(120, 60),
                      ),
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: Size(120, 60),
              ),
              child: Text("Reset", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
