import 'package:flutter/material.dart';
import 'package:module3/setPage.dart';
import 'package:module3/main.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      body: mainMenu(),
    ),
  ));
}

class mainMenu extends StatelessWidget {
  String name = 'Tumi';
  String surname = 'Motsoari';
  String faveApp = 'Discord';
  String phone = '+27 65 870 8311';

  mainMenu({name,phone,faveApp,surname});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Dasbaord'),
        ),
        body: Column(
          children: [
            Container(

              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 250),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
              child: Row(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Name:     $name',
                    style: TextStyle(fontSize: 33),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(

              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 250),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
              child: Row(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Surname:     $surname',
                    style: TextStyle(fontSize: 33),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 250),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
              child: Row(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Favourite App:     $faveApp',
                    style: TextStyle(fontSize: 33),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(

              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 250),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),

              child: Row(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Phone number:     $phone',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => settings()));
          },
          label: Text('Menu'),
          icon: Icon(Icons.menu),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
