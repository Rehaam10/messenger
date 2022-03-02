// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_new, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:messenger/messenger_screen/people.dart';
import 'package:messenger/messenger_screen/profile.dart';
import 'package:messenger/messenger_screen/stories.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../chats.dart';

final ImagePicker _picker = ImagePicker();
File? profileImage;

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  int currentIndex = 0;
  List<Widget> screens = [
    Chats(),
    People(),
    Stories(),
  ];

  List<String> titles = [
    'Chats',
    'People',
    'Stories',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.grey[100],
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
            ),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.amp_stories_rounded,
            ),
            label: 'Stories',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (Context) => Profile(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(
                  'images/reham.jpg',
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              titles[currentIndex],
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () async {
              setState(() {
                getProfileImage();
              });
            },
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              backgroundImage: profileImage == null
                  ? const NetworkImage(
                          'https://fedoramagazine.org/wp-content/uploads/2017/05/f23.png-768x480.jpg')
                      as ImageProvider
                  : FileImage(profileImage!),
              child: Icon(Icons.camera_alt),
            ),
            color: Colors.white,
            iconSize: 15.0,
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(Icons.edit),
            ),
            color: Colors.white,
            iconSize: 15.0,
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }

  Future<void> getProfileImage() async {
    if (profileImage != null) {
      profileImage = null;
    }
    await _picker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() => profileImage = File(value!.path));
    }).catchError((error) {
      print(error.toString());
    });
  }
}
