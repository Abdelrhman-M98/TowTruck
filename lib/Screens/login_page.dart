import 'package:flutter/material.dart';
import 'package:tow_truck/Screens/home_page.dart';
import 'package:tow_truck/Screens/reset_pass_page.dart';
import 'package:tow_truck/Screens/sign_up_oage.dart';
import 'package:tow_truck/Widget/custom_btn.dart';
import 'package:tow_truck/Widget/custom_cantainer_input.dart';
import 'package:tow_truck/Widget/round_checkbox.dart';
import 'package:tow_truck/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    "assets/Image/Logo.png",
                  ),
                ),
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
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      RoundedCheckbox(
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                          color: subText,
                          fontSize: 12,
                          fontFamily:
                              'Poppins', // Ensure this font is in your pubspec.yaml
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ResetPassPage();
                      }));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: primColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBtn(
                title: "Log In",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "Dont have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextBtn(
                Title: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUp();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextBtn extends StatelessWidget {
  const CustomTextBtn({
    super.key,
    required this.Title,
    required this.onPressed,
  });
  final String Title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          Title,
          style: const TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
