// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Share a story',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100.0,
              width: double.infinity,
              child: Text('Share photos, videos, and more for 24 hours. When you and your friends share stories, they\'ll show up here.',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
            }, child: Text(
              'ADD TO STORY',),
            ),
          ],
        ),
      ),
    );
  }
}
