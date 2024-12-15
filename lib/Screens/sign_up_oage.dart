import 'package:flutter/material.dart';
import 'package:tow_truck/Widget/custom_btn.dart';
import 'package:tow_truck/Widget/custom_cantainer_input.dart';
import 'package:tow_truck/Widget/round_checkbox.dart';
import 'package:tow_truck/const.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = true; // Track the state of the checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    "assets/Image/Logo.png",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const CustomCantainerInput(
                Title: "Full Name",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCantainerInput(
                Title: "Phone Number",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCantainerInput(
                isPass: true,
                Title: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCantainerInput(
                isPass: true,
                Title: "Confirm Password",
              ),
              SizedBox(
                height: 20,
              ),
              CustomBtn(
                title: "Sign Up",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
