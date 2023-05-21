import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tugas 2 Pemrograman Mobile",
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoggedIn = false;

  void login() {
    setState(() {
      isLoggedIn = true;
    });
  }

  void logout() {
    setState(() {
      isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 2 Pemrograman Mobile"),
      ),
      backgroundColor: Color.fromARGB(255, 187, 180, 154),
      body: Center(
        child: isLoggedIn ? loggedInLayout() : loginLayout(),
      ),
    );
  }

  Widget loginLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Silakan login",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: login,
            child: Text("Login"),
          ),
        ),
      ],
    );
  }

  Widget loggedInLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Selamat Datang",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.topCenter,
          child: ElevatedButton(
            onPressed: logout,
            child: Text('Logout'),
          ),
        ),
      ],
    );
  }
}
