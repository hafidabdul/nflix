import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/widgets/custom_button.dart';
import 'package:nflix/ui/widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlackColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 170,margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/netflix-logo.png'))),
                ),
                Text(
                  'WELCOME',
                  style: whiteTextStyle.copyWith(fontSize: 40, fontWeight: black),
                ),
                Text(
                  'ready to watch',
                  style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                ),
                CustomTextFormField(
                    hintText: 'Email', controller: emailController),
                CustomTextFormField(
                  hintText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),
                
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgot password ?',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )),
                CustomButton(
                  width: 250,
                  title: 'Login',
                  onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);},
                  margin: EdgeInsets.only(top: 10,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "it's your first time her ? ",
                      style: whiteTextStyle.copyWith(fontWeight: light),
                    ),
                    TextButton(onPressed: (){},
                      child: Text(
                        'Sign up',
                        style: redTextStyle.copyWith(fontWeight: light),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
