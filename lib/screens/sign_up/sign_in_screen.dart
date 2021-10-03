import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groups/config/colors.dart';
import 'package:groups/config/styles.dart';
import 'package:groups/screens/sign_up/sign_up_screen.dart';



class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Sign In ',
                    style: GoogleFonts.mali(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Enter your details below ',
                  style: GoogleFonts.mali(
                    color: Colors.black45,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  validator: (String? val) {
                    if (val!.trim().isEmpty) {
                      return 'Username/Email is required';
                    }
                    return null;
                  },
                  onSaved: (val) {},
                  onChanged: (value) {},
                  enableInteractiveSelection: true,
                  style: kInputStyle,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                    helperStyle: kInputHintStyle,
                    errorStyle: kInputHintStyle,
                    hintStyle: kInputHintStyle,
                    labelText: 'Username or Email',
                    labelStyle: kInputHintStyle,
                    fillColor: kWhite,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.black38, width: 0.3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  validator: (String? val) {
                    if (val!.trim().isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  onSaved: (val) {},
                  onChanged: (value) {},
                  enableInteractiveSelection: true,
                  obscureText: true,
                  style: kInputStyle,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                    helperStyle: kInputHintStyle,
                    errorStyle: kInputHintStyle,
                    hintStyle: kInputHintStyle,
                    labelText: 'Password',
                    labelStyle: kInputHintStyle,
                    fillColor: kWhite,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.black38, width: 0.3),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: 45,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    color: kColorPrimary,
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.mali(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Container(
                    height: 45,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.transparent,
                      child: Text(
                        'Not a member? Sign up now',
                        style: GoogleFonts.mali(
                          color: Colors.black38,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
