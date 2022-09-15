import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//this should contain the classes for all the authentication which would be done through in firebase
//you can decide to add other ones to them based on your preference
//although some other classes i need are also here even though they might not enter the database

//ListTile class. Ive called it in the homescreen
class myListTile extends StatelessWidget {
  final String ordername;
  final String namenlocation;
  final String amountntotal;
  myListTile({Key? key, required this.ordername, required this.namenlocation, required this.amountntotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //I created a listtile with its needed values then I wrapped it with a
      //Card (so that i can get access to the leading and trailings) and
      //a Container (so that I can edit the height of the card)
      height: 120,
      child: Card(
        elevation: 5,
        child: ListTile(
          tileColor: Colors.white,
          leading:const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Icon(Icons.shopping_bag_outlined, size: 40,),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(ordername),
          ),
          subtitle: Text(namenlocation),
          trailing: Text(amountntotal),
        ),
      ),
      
    );
  }
}


//Circle Avatar class for the profile page. Check profile page
class myCircleAvatar extends StatefulWidget {
  const myCircleAvatar({super.key});

  @override
  State<myCircleAvatar> createState() => _myCircleAvatarState();
}

class _myCircleAvatarState extends State<myCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
          'https://noble.co.bw/wp-content/uploads/2021/12/Vusi-Thembekwayo-2.jpg'),
    );
  }
}
