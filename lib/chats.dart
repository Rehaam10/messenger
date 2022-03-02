// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'chats.dart';

class Chats extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(
                'images/reham.jpg',
              ),
              ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.blue,
        child: Icon(
              Icons.camera_alt),
      ),
              color: Colors.white,
              iconSize: 15.0,
            ),
            IconButton(onPressed: (){},
              icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(
                  Icons.edit),
            ),
              color: Colors.white,
              iconSize: 15.0,
            ),
        ],
      ),*/
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Search',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(itemBuilder: (Context , index)=> buildStoryItem(),
                    separatorBuilder: (Context ,index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(itemBuilder: (Context , index)=> buildChatItem(),
                  separatorBuilder: (Context , index)=> SizedBox(
                    height: 15.0,
                  ),
                  itemCount: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
          ],
          ),
        ),
    ),
    );
  }
}
  Widget buildStoryItem()=> Container(
      height: 100.0,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/reham.jpg'),
                radius: 30.0,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 60.0,
            child: Text(
              'Reham Abdelhameed Mostafa Mohamed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
  ],
  ),
    );
  Widget buildChatItem()=> Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/reham.jpg'),
            radius: 30.0,
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reham Abdelhameed Mostafa Mohamed Reham Abdelhameed Mostafa Mohamed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
                children: [
                  Expanded(
                    child: Text(
                        'Hello Reham Abdelhameed Mostafa Mohamed , welcome to my chat , it is your first time to chat me',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ),
                  Text(
                    '2:00 AM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    ],
  );