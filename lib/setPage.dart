import 'package:flutter/material.dart';
import 'package:module3/editProfile.dart';
import 'package:module3/main.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Menu'),
          backgroundColor: Colors.black87,
        ),
        floatingActionButton: SafeArea(
          child: Center(
            child: Row(
              children: [
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => edtProfile()));
                  },
                  label: Text('Edit profile'),
                  icon: Icon(Icons.edit),
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => settings()));
                  },
                  label: Text('Menu'),
                  icon: Icon(Icons.menu),
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginApp()));
                  },
                  label: Text('Login page'),
                  icon: Icon(Icons.login),
                  backgroundColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
