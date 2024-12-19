import 'package:flutter/material.dart';
import 'login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(85, 28, 218, 1),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 85, top: 130),
              child: const Text('Create account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 33,
                  )),
            ),
            SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: const Color.fromARGB(255, 16, 13, 23),
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'login');
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 21, 17, 25),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromARGB(255, 142, 49, 236),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward),
                              ),
                            )
                          ],
                        )
                      ],
                    )))
          ],
        ));
  }
}
