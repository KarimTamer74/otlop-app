// sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/app_colors.dart';
import 'package:otlop_app/auth_divider_row.dart';
import 'package:otlop_app/auth_header_section.dart';
import 'package:otlop_app/auth_other_register_section.dart';
import 'package:otlop_app/custom_elevated_button.dart';
import 'package:otlop_app/custom_text_button.dart';
import 'package:otlop_app/forget_pass_section.dart';
import 'package:otlop_app/titled_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisiable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 25, 38),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* Auth Header
                AuthHeaderSection(
                  title: 'Create an account',
                  subTitle: 'Connect with your friends today!',
                ),
                SizedBox(height: 35),
                //* TitledTextFiled
                TitledTextField(title: 'Name', hintText: 'Enter your name'),
                TitledTextField(
                  title: 'Email Address',
                  hintText: 'Enter your email',
                ),
                TitledTextField(
                  title: 'Phone Number',
                  hintText: 'Enter your phone',
                ),
                TitledTextField(
                  title: 'Password',
                  hintText: 'Enter your password',
                  obscureText: isVisiable,
                  suffixIcon: IconButton(
                    onPressed: () {
                      isVisiable = !isVisiable;
                      setState(() {});
                    },
                    icon: Icon(
                      isVisiable ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),

                //* ForgetPassSection
                ForgetPassSection(),

                CustomElevatedButton(text: 'Sign Up'),
                SizedBox(height: 15),
                AuthDividerRow(),
                SizedBox(height: 15),

                //* Auth Other Register
                AuthOtherRegisterSection(),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CustomTextButton(
                      text: 'Login',
                      onPressed: () {},
                      textClr: AppColors.primayClr,
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
