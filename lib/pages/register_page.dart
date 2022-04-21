import 'package:flutter/material.dart';
import 'package:realtime_chat/widgets/button.dart';
import 'package:realtime_chat/widgets/customInput.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Register",
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
                Button(
                  text: "Register",
                  onPressed: () {},
                  horizontalPadding: 30,
                  topPadding: 20,
                  color: Color(0xff002DE3),
                ),
              ],
            ),
          ),
        ),
      ),
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
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final repeatPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        child: Column(children: [
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: "Name",
            keyboardType: TextInputType.name,
            textController: nameController,
          ),
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
          CustomInput(
            icon: Icons.password_outlined,
            placeholder: "Repeat Password",
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
            textController: repeatPassController,
          ),
        ]),
      ),
    );
  }
}
