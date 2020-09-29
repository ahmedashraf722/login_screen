import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'RobotoCondensed',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 140,
                  height: 40,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey[200].withOpacity(0.4),
                        style: BorderStyle.solid,
                        width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, bottom: 10, right: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/f.png')),
                          ),
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 140,
                  height: 40,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent[200],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey[200].withOpacity(0.4),
                        style: BorderStyle.solid,
                        width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, bottom: 10, right: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            image: DecorationImage(
                                image: AssetImage('assets/images/t.png')),
                          ),
                        ),
                        Text(
                          "Twitter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _inputText('User Name', false, Icon(Icons.person)),
            _inputText('Password', true, Icon(Icons.lock)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Forget Password ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
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
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'RobotoCondensed',
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'RobotoCondensed',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
