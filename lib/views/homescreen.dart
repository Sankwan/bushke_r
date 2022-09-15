import 'package:bushke_r/models/authentication.dart';
import 'package:bushke_r/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            //I put all of them in a row according to the figma design
            //for the picture, I made a gesture detector with a child of circle avatar
            //the gesture detector will help it route to the next page. Circle avatar did not
            //work for routing. I tried a number of ways until this worked.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Profile())));
                    },
                    child: CircleAvatar(
                      radius: 40,
                      child: ClipOval(
                        child: Image.network(
                          'https://noble.co.bw/wp-content/uploads/2021/12/Vusi-Thembekwayo-2.jpg',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Available',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.call),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Pending Deliveries',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
            ),
            //I required all these parameters when i created the ListTile classes
            const SizedBox(
              height: 30,
            ),
            myListTile(
                ordername: 'Waakye ',
                namenlocation: 'Darko Lartey \nOC-That Way',
                amountntotal: 'x2\n GH 8.00'),
            //the slashn is to move the total amount to the next line. I didnt know
            //any other way to make it work. I had used up all the properties under the Listtile
            const SizedBox(
              height: 5,
            ),
            myListTile(
                ordername: 'Gob3',
                namenlocation: 'T-Bag \nDidi Na Men-Pent',
                amountntotal: 'x5\n GH 10.00'),
            const SizedBox(
              height: 5,
            ),
            myListTile(
                ordername: 'Fufu, goat meat and Light Soup',
                namenlocation: 'Kwame \nOC Kitchen-CommonWealth',
                amountntotal: 'x1\n GH 12.00'),
            const SizedBox(
              height: 5,
            ),
            myListTile(
                ordername: 'Chicken Shawarma',
                namenlocation: 'Black\nNii Place-Volta',
                amountntotal: 'x2\n GH 20.00'),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
