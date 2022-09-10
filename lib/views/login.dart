import 'package:bushke_r/views/forgot_password.dart';
import 'package:bushke_r/views/homescreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 300,
          ),
          Container(
            height: 70,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: const Text(
              'username',
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: const Text(
              'password',
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton( onPressed: (() {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const ForgotPassword())));
          }),
            child: const Text(
              'Forgot Password',
              textAlign: TextAlign.right,
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const HomeScreen())));
            },
            child: Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 102, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Login',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
