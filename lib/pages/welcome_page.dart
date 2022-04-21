import 'package:flutter/material.dart';
import 'package:realtime_chat/widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/welcome_logo.png'),
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(height: 100),
                Text(
                  'Welcome to the Chat App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 100),
                Column(
                  children: [
                    const Text("Terms & Privacy Policy"),
                    Button(
                      text: "Continue",
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      horizontalPadding: 30,
                      topPadding: 10,
                      color: Color(0xff002DE3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
