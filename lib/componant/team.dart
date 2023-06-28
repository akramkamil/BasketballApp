

import 'package:flutter/material.dart';

class TeamPoints extends StatefulWidget {
   TeamPoints({super.key, this.title});
   String? title;
   int teamPoint=0;


  @override
  State<TeamPoints> createState() => _TeamPointsState();
}

class _TeamPointsState extends State<TeamPoints> {

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                     Text(
                      'Team '+ widget.title!,
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      widget.teamPoint.toString(),
                      style: TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.teamPoint++;
                        });
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 1 Point'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.teamPoint += 2;
                        });
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 2 Point'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.teamPoint += 3;
                        });
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 3 Point'),
                    )
                  ],
                );
  }
}