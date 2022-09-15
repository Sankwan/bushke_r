import 'package:bushke_r/views/forgot_password.dart';
import 'package:bushke_r/views/homescreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _secureText = true;
//the secureText is for the password validator 66 to 95, 128 to 135
  final _formKey = GlobalKey<FormState>();
//the formKey is to help the forms with the validation
  TextEditingController _passwordController = TextEditingController();
  var _passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 180,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isNotEmpty && value.length > 1) {
                        return null;
                      } else if (value.isEmpty) {
                        return 'No name given';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: 'username',
                      labelText: 'username',
                      border: InputBorder.none,
                      fillColor: Color(0xFFF4F4F4),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          hintText: 'password',
                          labelText: 'password',
                          errorText: _passwordError,
                          border: InputBorder.none,
                          fillColor: Color(0xFFF4F4F4),
                          filled: true,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                          )),
                      obscureText: _secureText,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Password';
                        } else if (value.length < 5) {
                          return 'Enter at least 5 characters';
                        } else {
                          return null;
                        }
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 189),
              child: TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ForgotPassword())));
                }),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFFF58634),
                  ),
                  onPressed: (() {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    print('Password :' + _passwordController.text);
                    setState(() {
                      if (_passwordController.text.isEmpty)
                        _passwordError = 'Enter Password';
                      else if (_passwordController.text.isNotEmpty &&
                          _passwordController.text.length < 5)
                        _passwordError = 'Enter at least 5 characters';
                      else
                        _passwordError = null;

                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                    });
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomeScreen())));
                  }),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  ),),
            ),
          ],
        ),
      ),
    );
  }
}
