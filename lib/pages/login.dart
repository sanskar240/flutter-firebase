import 'package:flutter/material.dart';
import 'package:flutter_application_1/backend/google_auth.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome'),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.home,
                  size: 100,
                ),
                decoration: BoxDecoration(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: Text(
                'Manage your Notes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  signInWithGoogle(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      'assets/google.png',
                      height: 36.0,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
