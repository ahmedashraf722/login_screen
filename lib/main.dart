import 'package:flutter/material.dart';
import 'package:login/login_in.dart';
import 'package:login/resister.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _container(String text, Color color) {
    return Container(
      width: 300,
      height: 55,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
            color: Colors.grey[200].withOpacity(0.4),
            style: BorderStyle.solid,
            width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/s.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 150,
              ),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'RobotoCondensed',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Simply Login in facebook and twitter",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 350,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: _container(
                "LOGIN NOW",
                Colors.cyanAccent[200],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Resister()));
              },
              child: _container(
                "SIGN UP",
                Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
