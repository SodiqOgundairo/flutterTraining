import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 152, 213),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mapp Blog',
              style: TextStyle(
                  color: Color.fromARGB(255, 77, 152, 213),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15.0),
            Image.asset('assets/images/welcome.png'),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 40),
              ),
              child: const Text('Login'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(300, 40),
                  foregroundColor: Colors.blue),
              child: const Text('SignUp'),
            )
          ],
        ),
      ),
    );
  }
}
