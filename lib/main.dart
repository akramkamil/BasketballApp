import 'package:basketball_app/componant/team.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatefulWidget {
  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Point Counter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamPoints(title: 'A',)
                ,Container(
                  height: 500,
                  child: const VerticalDivider(
                    thickness: 1,
                    width: 10,
                    endIndent: 40,
                    indent: 10,
                    color: Colors.black,
                  ),
                ),
                TeamPoints(title: 'B',)
                ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  TeamPoints().teamPoint=0;
                });
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
