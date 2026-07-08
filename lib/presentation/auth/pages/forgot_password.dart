import 'package:ecommercelocal/common/helper/navigator/app_navigator.dart';
import 'package:ecommercelocal/common/widgets/appbar/app_bar.dart';
import 'package:ecommercelocal/common/widgets/button/basic_app_button.dart';
import 'package:ecommercelocal/data/auth/models/user_signin_req.dart';
import 'package:ecommercelocal/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20,),
            _emailField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Forgot Password',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        hintText: 'Enter Email'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context,
          EnterPasswordPage(signinReq: UserSigninReq(email: _emailCon.text))
        );
      },
      title: 'Continue'
    );
  }
}