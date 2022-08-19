import 'package:flutter/material.dart';
import 'package:module3/editProfile.dart';
import 'package:module3/mainMenu.dart';

class edtProfile extends StatelessWidget {
  String nm = '';
  String sn = '';
  String pNum = '';
  String app = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Edit Profile'),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (text) {
                      nm = text;
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      border: InputBorder.none,
                      hintText: 'Change Name: ',
                    ),
                  ),
                ),
              ),
              ////////////////////edit surname/////////////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (text) {
                      sn = text;
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      border: InputBorder.none,
                      hintText: 'Change Surname: ',
                    ),
                  ),
                ),
              ),
              /////////////////////////Change favourite app///////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (text) {
                      app = text;
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      border: InputBorder.none,
                      hintText: 'Change Favourite app: ',
                    ),
                  ),
                ),
              ),
              /////////////////////change phone number//////////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  width: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (text) {
                      pNum=text;
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      border: InputBorder.none,
                      hintText: 'Change phone number: ',
                    ),
                  ),
                ),
              ),
              /////////////////////////submit button/////////////////////////
              SizedBox(
                height: 30,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mainMenu(
                        name: nm,
                        phone: pNum,
                        faveApp: app,
                        surname: sn,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
