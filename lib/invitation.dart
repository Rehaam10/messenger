// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class InvitePeople extends StatelessWidget {
  const InvitePeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No active people',
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
                child: Text('You\'ll see when they are active here. You can also invite more friends to join Messenger',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (Context) => InvitationDone(),),);
              }, child: Text(
                'INVITE PEOPLE',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class InvitationDone extends StatelessWidget {
  const InvitationDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'THE INVITATION IS DONE',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
