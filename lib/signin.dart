import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/form.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(6)),
                    width: 50,
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        width: 15,
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        width: 50,
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              'images/task3.png',
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                  fontFamily: 'FiraSans', fontSize: 30, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text('You\'ve been missed',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    'images/google.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Sign in with Google',
                      style: TextStyle(
                          fontFamily: 'FiraSans',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ]),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.black;
                      return Colors.grey.shade200;
                    },
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 15),
                    child: Divider(),
                  ),
                ),
                Text('OR'),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 20, right: 15),
                      child: Divider()),
                ),
              ],
            ),
            MyForm()
          ],
        ),
      ),
    ));
  }
}
