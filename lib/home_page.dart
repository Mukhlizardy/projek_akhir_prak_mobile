import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset("images/logo.png"),
          ),
          Container(
            child: Stack(
              children: [
                Text(
                  'Welcome To Grocery Apps',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[700]!,
                  ),
                ),
                Text(
                  'Welcome To Grocery Apps',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
