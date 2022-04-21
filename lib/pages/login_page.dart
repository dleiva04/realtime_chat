import 'package:flutter/material.dart';
import 'package:realtime_chat/widgets/button.dart';
import 'package:realtime_chat/widgets/customInput.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Your Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Avatar(),
                _Form(),
                CreateAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Not registered yet?",
          style: TextStyle(color: Colors.black54),
        ),
        SizedBox(height: 5),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'register'),
          child: Text("Create an account"),
        ),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final double _radius = 45;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: CircleAvatar(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/default_avatar.png"),
          maxRadius: _radius,
        ),
        backgroundColor: Colors.black,
        maxRadius: _radius + 2,
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomInput(
              icon: Icons.email_outlined,
              placeholder: "Email",
              keyboardType: TextInputType.emailAddress,
              textController: emailController,
            ),
            CustomInput(
              icon: Icons.password_outlined,
              placeholder: "Password",
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
              textController: passController,
            ),
            Button(
              text: "Login",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(emailController.text);
                  print(passController.text);
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'users',
                    (Route<dynamic> route) => false,
                  );
                }
              },
              horizontalPadding: 30,
              topPadding: 20,
              color: Color(0xff002DE3),
            ),
          ],
        ),
      ),
    );
  }
}
