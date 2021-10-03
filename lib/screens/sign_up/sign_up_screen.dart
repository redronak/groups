import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groups/config/colors.dart';
import 'package:groups/config/styles.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final String bio;
  late final String fullname;
  late final String username;
  late final String age;
  late final String Email_Address;
  late final String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BackButton(),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Sign Up ',
                style: GoogleFonts.mali(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  children: [
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
                          return 'Username is required';
                        }
                        return null;
                      },
                      onSaved: (val) {username = val!;},
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
                        labelText: 'Username',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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
                          return 'Email address is required';
                        }
                        return null;
                      },
                      onSaved: (val) {Email_Address = val!;},

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
                        labelText: 'Email address',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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
                          return 'Full name is required';
                        }
                        return null;
                      },
                      onSaved: (val) {fullname= val!;},
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
                        labelText: 'Full name',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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
                          return 'Bio is required';
                        }
                        return null;
                      },
                      onSaved: (val) {bio = val!;},
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
                        labelText: 'Bio',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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
                          return 'Age is required';
                        }
                        return null;
                      },
                      onSaved: (val) {age = val!;},

                      enableInteractiveSelection: true,
                      style: kInputStyle,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                        helperStyle: kInputHintStyle,
                        errorStyle: kInputHintStyle,
                        hintStyle: kInputHintStyle,
                        labelText: 'Age',
                        labelStyle: kInputHintStyle,
                        fillColor: kWhite,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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
                      onSaved: (val) { password = val!;},

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
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.3),
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

                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        color: kColorPrimary,
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.mali(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        child: FlatButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate())  {
                              _formKey.currentState!.save();
                             final usercredential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: Email_Address, password: password);
                             await FirebaseFirestore.instance.collection("users").doc(usercredential.user!.uid).set(
                                  {"bio":bio,"age":age,"Email_Address":Email_Address,"Fullname":fullname,"username":username});
                                            
                            }
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.transparent,
                          child: Text(
                            'Already a member? Sign in',
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
          ],
        ),
      ),
    );
  }
}
