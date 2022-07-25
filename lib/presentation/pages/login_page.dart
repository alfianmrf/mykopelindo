import 'package:flutter/material.dart';
import 'package:mykopelindo/core/constants/constants.dart';
import 'package:mykopelindo/presentation/widgets/widgets.dart';

import 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
            child: Column(
              children: [
                const Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                InputWidget(
                  hint: 'Email',
                  color: Colors.black.withOpacity(0.15),
                  keyboard: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                InputWidget(
                  hint: 'Password',
                  color: Colors.black.withOpacity(0.15),
                  password: true,
                ),
                const SizedBox(height: 15),
                ButtonWidget(
                  text: 'Masuk',
                  isFullWidth: true,
                  fontSize: 16,
                  borderRadius: 32,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}