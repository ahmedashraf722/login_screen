import 'package:flutter/material.dart';

class Resister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sign(),
    );
  }
}

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  Widget _inputText(String hint, bool secure, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10, right: 30),
      child: TextFormField(
        obscureText: secure,
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.black),
          prefixIcon: icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.cyanAccent[200])),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          'Sign up',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'RobotoCondensed'),
        ),
        centerTitle: true,
        leading: Icon(Icons.add),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.menu),
        )],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          _inputText("User Name", false, Icon(Icons.person)),
          SizedBox(
            height: 5,
          ),
          _inputText("Email", false, Icon(Icons.email)),
          SizedBox(
            height: 5,
          ),
          _inputText("Phone", false, Icon(Icons.phone)),
          SizedBox(
            height: 5,
          ),
          _inputText("Password", true, Icon(Icons.lock)),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyanAccent[200]),
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
