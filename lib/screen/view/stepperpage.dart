import 'package:android_ui3/screen/provider/step_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtid = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtcpassword = TextEditingController();
  TextEditingController txtuname = TextEditingController();
  TextEditingController lpassword = TextEditingController();



  StepProvider? stepProvidertrue;
  StepProvider? stepProviderfalse;

  int current = 0;

  @override
  Widget build(BuildContext context) {
    stepProviderfalse = Provider.of<StepProvider>(context, listen: false);
    stepProvidertrue = Provider.of<StepProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Stepper App",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                primary: Colors.red,
              )),
              child: Stepper(
                steps: [
                  Step(
                      isActive: current >= 0,

                      title: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      content: Column(
                        children: [
                          TextField(
                            controller: txtname,
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                size: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextField(
                            controller: txtid,
                            decoration: InputDecoration(
                              hintText: "Email-Id",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                size: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextField(
                            controller: txtpassword,
                            decoration: InputDecoration(
                              hintText: "Password*",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.lock_open_outlined,
                                size: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextField(
                            controller: txtcpassword,
                            decoration: InputDecoration(
                              hintText: "Conform Password*",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.lock_open_outlined,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Step(
                      isActive: current >= 0,
                      title: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      content: Column(
                        children: [
                          TextField(
                            controller: txtname,
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                size: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextField(
                            controller: txtid,
                            decoration: InputDecoration(
                              hintText: "Email-Id",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.lock_open_outlined,
                                size: 25,
                              ),
                            ),
                          ),


                        ],
                      )),
                  Step(isActive: current >= 0,
                      title: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      content: Column(
                        children: [
                          TextField(
                            controller: txtname,
                            decoration: InputDecoration(
                              hintText: "Back",
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              prefixIcon: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),


                        ],
                      )),


                ],
                currentStep: stepProvidertrue!.i,
                onStepCancel: () {
                  stepProviderfalse!.backstep();
                },
                onStepContinue: () {
                  stepProviderfalse!.nextstep();
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
