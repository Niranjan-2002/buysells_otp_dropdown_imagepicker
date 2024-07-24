import 'dart:async';

import 'package:buy_sells_ui/View/dropDown.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterotpfield/flutterotpfield.dart';


class OtpAuth extends StatefulWidget {
  final String Phonenumber;
  const OtpAuth({super.key, required this.Phonenumber});

  @override
  State<OtpAuth> createState() => _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {







    @override
  void initState() {
    _startTimer();

    // TODO: implement initState
    super.initState();

  }







  final FirebaseAuth auth = FirebaseAuth.instance;
  static int maxSeconds = 60;
  int _currentSeconds = maxSeconds;
  //bool resendOtpVisible=false;
  Timer? _timer;

//otpTimerCode
  void _startTimer() {
    _currentSeconds = maxSeconds;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_currentSeconds > 0) {
          _currentSeconds--;
        } else {
          //  resendOtpVisible=true;
          _timer?.cancel();
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    var code = '';
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Enter OTP",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(30, 30, 30, 1))),
          const SizedBox(
            height: 16,
          ),
          Text(
            "We’ve sent an OTP code to your registered Phone Number ${widget.Phonenumber}",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(90, 90, 90, 1)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          FlutterOtpField(
            inputFieldLength: 6,
            spaceBetweenFields: 5,
            inputDecoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                constraints: const BoxConstraints(maxHeight: 60),
                fillColor: Colors.transparent,
                filled: true,
                hintText: "",
                counterText: "",
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 8, 8), width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 38, 244, 7), width: 1.0),
                    borderRadius: BorderRadius.circular(8))),
            onValueChange: (String value) {
              print("otp changed $value");
              code = value;
            
            },
            onCompleted: (String value) {
              print("otp changed $value");
              setState(() {
                code = value;
                // otp = value;
              });
            },
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "We will resend the code in",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(125, 138, 149, 1)),
              ),
              Text(
                "$_currentSeconds Sec",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(60, 162, 221, 1)),
              ),
            ],
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap:


            //this code is not verify othentication 
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DropDownScreen()));
            },


            //this code is verify othentication 

//             () async {

//                 try{
//                    PhoneAuthCredential credential =
//                    PhoneAuthProvider.credential(
//                     verificationId: HomeScreen.verify, smsCode: code);
//                     print('ky tr====$credential');
//                            // Sign the user in (or link) with the credential
//               await auth.signInWithCredential(credential);
//               // ignore: use_build_context_synchronously
//               Navigator.push(context, MaterialPageRoute( builder: (context)=>const DropDownScreen()));
//                }catch(e){
//                   print("wrong otp enter");
//                 }
// },
            child: Container(
                height: 51,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(60, 162, 221, 1),
                  borderRadius: BorderRadius.circular(15), // Circular border
                ),
                child: const Center(
                  child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
