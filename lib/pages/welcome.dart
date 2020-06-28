import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 12),
                    Image.asset('assets/welcome_banner.jpg'),
                    SizedBox(height: 28),
                    Text('BloodArena', style: TextStyle(fontSize: 32)),
                    Text('Every drop counts', style: TextStyle(fontSize: 16))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: Text('Let me in!!!!!!!',
                            style: TextStyle(color: Colors.red))),
                    MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text('I\'m new sign me up!',
                            style: TextStyle(color: Colors.white)),
                        color: Colors.red),
                    SizedBox(height: 28)
                  ],
                )
              ],
            )));
  }
}
