import 'package:bushke_r/models/authentication.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          myCircleAvatar(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Kofi Koranteng',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '02445522056',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'History',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 40,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Earnings',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 40,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Report',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
            indent: 40,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // FormField(builder: builder)
    );
  }
}
