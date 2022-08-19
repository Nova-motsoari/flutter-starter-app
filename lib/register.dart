import 'package:flutter/material.dart';
import 'package:module3/main.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.black38,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Text('Register page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        border: InputBorder.none,
                        hintText: 'Email: ',
                      ),
                    ),
                  ),
                ),
                //////////////password//////////
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
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        border: InputBorder.none,
                        hintText: 'Password: ',
                      ),
                    ),
                  ),
                ),
                /////////////confirm password////////
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
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        border: InputBorder.none,
                        hintText: 'Confirm password: ',
                      ),
                    ),
                  ),
                ),
                ////////////create account button/////////
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginApp()));
                  },
                  child: Text('Register',style: TextStyle(fontSize: 20,),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
