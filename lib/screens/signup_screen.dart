import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vpn_basic_project/controllers/auth_controller.dart';
import 'package:vpn_basic_project/screens/home_screen.dart';
import 'package:vpn_basic_project/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // final _formKey = GlobalKey<FormState>();
  final _controller = AuthController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisibility = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          padding: EdgeInsets.only(right: 8),
          onPressed: () => Get.to(() => HomeScreen()),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                alignment: AlignmentDirectional(0, -1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(maxWidth: 430),
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Log in',
                          //       style: TextStyle(
                          //           color: Colors.black, fontSize: 24),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 40,
                          ),
                          // Row(
                          //   children: [
                          //     Padding(
                          //       padding:
                          //           EdgeInsetsDirectional.fromSTEB(0, 6, 0, 24),
                          //       child: Text(
                          //         'Let\'s get started by filling out the form below.',
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 14,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // Form(
                          //   key: _formKey,
                          //   child: Column(
                          //     children: [
                          //       Padding(
                          //         padding: EdgeInsetsDirectional.fromSTEB(
                          //             0, 0, 0, 16),
                          //         child: Container(
                          //           width: double.infinity,
                          //           height: 80,
                          //           child: TextFormField(
                          //             controller: emailController,
                          //             autofocus: true,
                          //             autofillHints: [AutofillHints.email],
                          //             validator: (value) {
                          //               if (value == null || value.isEmpty) {
                          //                 return 'Please enter your email';
                          //               }
                          //               if (!EmailValidator.validate(value)) {
                          //                 return 'Please enter valid email';
                          //               }
                          //               return null;
                          //             },
                          //             style: TextStyle(
                          //                 color: Colors.black, fontSize: 14),
                          //             obscureText: false,
                          //             decoration: InputDecoration(
                          //               labelText: 'Email',
                          //               labelStyle:
                          //                   TextStyle(color: Colors.black),
                          //               floatingLabelStyle:
                          //                   TextStyle(color: Colors.black),
                          //               enabledBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.black45,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               focusedBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.blue,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               errorBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.red,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               focusedErrorBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.red,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               filled: true,
                          //               fillColor: Colors.white,
                          //             ),
                          //             minLines: null,
                          //             keyboardType: TextInputType.emailAddress,
                          //           ),
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: EdgeInsetsDirectional.fromSTEB(
                          //             0, 0, 0, 16),
                          //         child: Container(
                          //           width: double.infinity,
                          //           height: 80,
                          //           child: TextFormField(
                          //             controller: passwordController,
                          //             autofocus: true,
                          //             obscureText: passwordVisibility,
                          //             autofillHints: [AutofillHints.password],
                          //             validator: (value) {
                          //               if (value == null || value.isEmpty) {
                          //                 return 'Please enter your password';
                          //               }
                          //               return null;
                          //             },
                          //             style: TextStyle(
                          //                 color: Colors.black, fontSize: 14),
                          //             decoration: InputDecoration(
                          //               labelText: 'Password',
                          //               labelStyle:
                          //                   TextStyle(color: Colors.black),
                          //               floatingLabelStyle:
                          //                   TextStyle(color: Colors.black),
                          //               enabledBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.black45,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               focusedBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.blue,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               errorBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.red,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               focusedErrorBorder: OutlineInputBorder(
                          //                 borderSide: BorderSide(
                          //                   color: Colors.red,
                          //                   width: 2,
                          //                 ),
                          //                 borderRadius:
                          //                     BorderRadius.circular(12),
                          //               ),
                          //               filled: true,
                          //               fillColor: Colors.white,
                          //               suffixIcon: InkWell(
                          //                 onTap: () => setState(() =>
                          //                     passwordVisibility =
                          //                         !passwordVisibility),
                          //                 focusNode:
                          //                     FocusNode(skipTraversal: true),
                          //                 child: Icon(
                          //                   !passwordVisibility
                          //                       ? Icons.visibility_outlined
                          //                       : Icons.visibility_off_outlined,
                          //                   color: Color(0xFF57636C),
                          //                   size: 24,
                          //                 ),
                          //               ),
                          //             ),
                          //             minLines: null,
                          //           ),
                          //         ),
                          //       ),
                          //       ElevatedButton(
                          //         onPressed: () async {
                          //           if (_formKey.currentState!.validate()) {
                          //             try {} catch (e) {
                          //               log(e.toString());
                          //             }
                          //           }
                          //         },
                          //         style: ButtonStyle(
                          //             minimumSize:
                          //                 MaterialStateProperty.all<Size>(
                          //               Size.fromHeight(50),
                          //             ),
                          //             backgroundColor:
                          //                 MaterialStateProperty.all<Color>(
                          //                     Colors.blue),
                          //             shadowColor:
                          //                 MaterialStateProperty.all<Color>(
                          //                     Colors.white)),
                          //         child: Text(
                          //           "Sign in",
                          //           style: TextStyle(color: Colors.white),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Padding(
                          //   padding:
                          //       EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                          //   child: Container(
                          //     width: double.infinity,
                          //     child: Stack(
                          //       alignment: AlignmentDirectional(0, 0),
                          //       children: [
                          //         Align(
                          //           alignment: AlignmentDirectional(0, 0),
                          //           child: Padding(
                          //             padding: EdgeInsetsDirectional.fromSTEB(
                          //                 0, 12, 0, 12),
                          //             child: Container(
                          //               width: double.infinity,
                          //               height: 2,
                          //               decoration: BoxDecoration(
                          //                   color: Colors.black45),
                          //             ),
                          //           ),
                          //         ),
                          //         Container(
                          //           width: 70,
                          //           height: 32,
                          //           decoration:
                          //               BoxDecoration(color: Colors.white),
                          //           alignment: AlignmentDirectional(0, 0),
                          //           child: Text(
                          //             'OR',
                          //             style: TextStyle(
                          //                 color: Colors.black87, fontSize: 14),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          ElevatedButton(
                            onPressed: () async => await _controller.google(),
                            style: ButtonStyle(
                              maximumSize: MaterialStateProperty.all<Size>(
                                  Size.infinite),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(color: Colors.black45),
                              ),
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/google.svg',
                                  semanticsLabel: 'Google Icon',
                                  height: 15,
                                  width: 15,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already Have an Account? ',
                                style: TextStyle(color: Colors.black),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () => Get.to(() => LoginScreen()),
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ],
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
