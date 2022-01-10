import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          children: [
              SizedBox(height: 20,),
            SizedBox(
              height: 110,
              width: 110,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(),
                  /* SizedBox(
                        height: 46,
                        width: 46,
                        child: FlatButton(onPressed: () {},
                        // save picture asset child: ,
                        ),
                    ), */
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(width: 20, height: 35,),
                    Expanded(child: Text('My Account',
                        style: TextStyle(color: Colors.white,
                      fontSize: 20.0,))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(width: 20, height: 35,),
                    Expanded(child: Text('Settings',
                        style: TextStyle(color: Colors.white, fontSize: 20.0))),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
