import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://noble.co.bw/wp-content/uploads/2021/12/Vusi-Thembekwayo-2.jpg'),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                'Available',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                'Available',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
