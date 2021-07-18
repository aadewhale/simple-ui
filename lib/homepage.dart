import 'package:flutter/material.dart';
import 'package:myapp/signin.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 15, right: 15),
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
              'Growing your',
              style: TextStyle(
                  fontFamily: 'FiraSans', fontSize: 30, color: Colors.black),
            ),
            RichText(
              text: TextSpan(
                  text: 'business ',
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 32,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'is easier',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.shade400,
                          fontSize: 32,
                        ))
                  ]),
            ),
            Text(
              'than you think!',
              style: TextStyle(
                  fontFamily: 'FiraSans', fontSize: 32, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Sign up takes only 2 minutes',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 80),
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.black;
                      return Colors.black;
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, bottom: 60, top: 10),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
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
            Container(
              width: 150,
              height: 5,
              color: Colors.grey.shade200,
            )
          ],
        ),
      ),
    );
  }
}
