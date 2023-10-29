import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:utsamp/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key});

  get backgroundColor => Color.fromARGB(255, 36, 39, 57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login', style: TextStyle(color: Colors.white))),
        backgroundColor: Color.fromARGB(255, 20, 28, 44),
      ),
      body: Stack(
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/images/kyodai.jpg', // Replace with your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Blurred Container
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust the blur intensity
                child: Container(
                  width: 300,
                  height: 250,
                  color: Color.fromARGB(255, 33, 36, 49).withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'username',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Muhammad Mukti Rimawan',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: '21670078',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          obscureText: true,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Dashboard()
                          ));
                        },
                        child: Text('Login', style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
