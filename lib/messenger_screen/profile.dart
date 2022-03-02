// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text('Me',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),),),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage('images/reham.jpg'),
                      radius: 50.0,
                    ),
                    Text('Reham A. Mostafa',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Dark mode',prefix: Icons.nightlight_round,subtitle: 'System'),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Message Request',prefix: Icons.voice_chat_outlined, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Archived Chats',prefix: Icons.archive_rounded, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Active Status',prefix: Icons.filter_tilt_shift_outlined,subtitle: 'On'),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Username',prefix: Icons.account_circle_outlined,subtitle: 'm.me/rooma'),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Privacy',prefix: Icons.privacy_tip, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Avatar',prefix: Icons.person_pin_circle_rounded, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Notifications & sounds',prefix: Icons.notifications, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Data Saver',prefix: Icons.signal_cellular_alt_sharp, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Story',prefix: Icons.amp_stories_rounded, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'SMS',prefix: Icons.sms, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Phone contacts',prefix: Icons.group, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Photos & media',prefix: Icons.photo_camera_back, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Bubbles',prefix: Icons.circle, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Switch account',prefix: Icons.switch_account, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Account settings',prefix: Icons.settings, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Report Technical Problem',prefix: Icons.warning_outlined, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Help',prefix: Icons.help, subtitle: ''),
              SizedBox(
                height: 10.0,
              ),
              buildItem(title: 'Legal & policies',prefix: Icons.local_police_outlined, subtitle: ''),
          ],
          ),
        ),
      ),
    );
  }
}

Widget buildItem({
  required String title,
  required String subtitle,
  required IconData prefix,
})=> Container(
  color: Colors.grey[200],
  width: double.infinity,
  height: 70.0,
  child: ListTile(
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.black,
      ),
    ),
    leading: Icon(
      prefix,
      color: Colors.grey,
    ),
    onTap: (){},
    subtitle: Text(
      subtitle,
    ),
  ),
);