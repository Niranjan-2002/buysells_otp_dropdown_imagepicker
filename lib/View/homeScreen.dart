import 'package:buy_sells_ui/View/optscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  static String verify = '';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  TextEditingController _countrycode = TextEditingController();

  @override
  void initState() {
    _countrycode.text = '+91';
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/img1.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(

              // top: 543,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(48),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                height: 383,
                width: 425,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 313,
                    width: 360,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(90, 90, 90, 1)),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Please enter your registered mobile number so we will send you OTP for login.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(90, 90, 90, 1)
                                // fontStyle: FontStyle.sf
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mobile Number",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 202,
                              width: 360,
                              child: Column(
                                children: [
                                  TextField(
                                    maxLength: 10,
                                    controller: _controller,
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    decoration: const InputDecoration(
                                      labelText: 'Mobile Number',
                                      hintText: 'Enter your mobile number',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  SizedBox(
                                    height: 51,
                                    width: 360,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        // Set the button color
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                      ),
                                      // this is for without otp naviggation on next screen  code commented

                                       onPressed: 
                                      () {
                                        if (_controller.text.length == 10) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => OtpAuth(
                                                    Phonenumber:
                                                        _controller.text)),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text(
                                                    'Please enter your mobile number')),
                                          );
                                        }
                                      },
                                      
                                      

                                      // this is for with otp naviggation on next screen  code 

                                      
                                      // () async {
                                      //   print(
                                      //       'onPressed==${_countrycode.text}${_controller.text}');
                                      //   await FirebaseAuth.instance
                                      //       .verifyPhoneNumber(
                                      //     phoneNumber:
                                      //         '${_countrycode.text}${_controller.text}',
                                      //     //'${{_controller.text}}',
                                      //     verificationCompleted:
                                      //         (PhoneAuthCredential credential) {
                                      //       print(
                                      //           'tr tr tr==credential==$credential');
                                      //     },
                                      //     verificationFailed:
                                      //         (FirebaseAuthException e) {
                                      //       print(
                                      //           'br br brrrr==FirebaseAuthException==$e');
                                      //     },
                                      //     codeSent: (String verificationId,
                                      //         int? resendToken) {
                                      //       print(
                                      //           'tr tr tr==verificationId==$verificationId');
                                      //       print(
                                      //           'tr tr tr==resendToken==$resendToken');

                                      //       HomeScreen.verify = verificationId;
                                      //       if (_controller.text.isNotEmpty) {
                                      //         Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   OtpAuth(
                                      //                       Phonenumber:
                                      //                           _controller
                                      //                               .text)),
                                      //         );
                                      //       } else {
                                      //         ScaffoldMessenger.of(context)
                                      //             .showSnackBar(
                                      //           const SnackBar(
                                      //               content: Text(
                                      //                   'Please enter your mobile number')),
                                      //         );
                                      //       }
                                      //     },
                                      //     codeAutoRetrievalTimeout:
                                      //         (String verificationId) {},
                                      //   );
                                      // },
                                      child: const Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    //height:70,
                                    // width:370,

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Don’t have an account? "),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        GestureDetector(
                                            onTap: () {},
                                            child: const Text(
                                              "Create Account",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.blue),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
