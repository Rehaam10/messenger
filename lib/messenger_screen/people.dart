// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../invitation.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'See Who\'s active',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              child: Text(
                'Let people see when you\'re active, recently active or currently in the same chats as them. you\'ll see when they are too.',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (Context) => InvitePeople(),
                  ),
                );
              },
              child: Text(
                'TURN ON',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
