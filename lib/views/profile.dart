import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const[
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://noble.co.bw/wp-content/uploads/2021/12/Vusi-Thembekwayo-2.jpg'),
          )
        ],
      ),
    );
  }
}