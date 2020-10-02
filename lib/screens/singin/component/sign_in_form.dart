import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/screens/forgot_pass_screen/forgot_pass_screen.dart';
import 'package:shoping_app/screens/login_success/LoginSuccess.dart';
import 'package:shoping_app/widget/defaut_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'form_error_text.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final List<String> errors = [];

  final _formKey = GlobalKey<FormState>();

  bool rememberMe = false;

  String email;
  String password;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  addError(error: kEmailNullError);
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  addError(error: kInvalidEmailError);
                  return "";
                }
                return null;
              },
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kEmailNullError);
                } else if (emailValidatorRegExp.hasMatch(value)) {
                  removeError(error: kInvalidEmailError);
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
                suffixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Mail.svg',
                  ),
                ),
                alignLabelWithHint: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kPassNullError);
                } else if (value.length >= 8) {
                  removeError(error: kShortPassError);
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty) {
                  addError(error: kPassNullError);
                  return "";
                } else if (value.length < 8) {
                  addError(error: kShortPassError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                suffixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Lock.svg',
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              errors.length,
              (index) => FormErrorText(
                error: errors[index],
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: rememberMe,
                        onChanged: (checked) {
                          setState(() {
                            rememberMe = checked;
                          });
                        }),
                    Text("Remember me"),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, ForgotPassScreen.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            DefaultButton(
              onPress: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            ),
          ],
        ));
  }
}
