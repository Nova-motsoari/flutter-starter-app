import 'package:flutter/material.dart';
import 'package:module3/mainMenu.dart';
import 'package:module3/register.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Login'),
        ),
        body: loginApp(),
      ),
    ),
  );
}

class loginApp extends StatefulWidget {


  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.supervised_user_circle,
              size: 150.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 400.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    border: InputBorder.none,
                    hintText: 'User Name',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //////////////////////////////Password Text field//////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                width: 400.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            ///////////////////////////Login button//////////////////////////////////////
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>mainMenu()));
                },
              child: Text('Login',style: TextStyle(fontSize: 20,),),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
              },
              child: Text('Register',style: TextStyle(fontSize: 20,),),
            )
          ],
        ),
      ),
    );
  }
}
