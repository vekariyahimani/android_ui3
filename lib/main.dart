import 'dart:io';

import 'package:android_ui3/screen/provider/step_provider.dart';
import 'package:android_ui3/screen/view/stepperpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => StepProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => StepperPage(),
        },
      ),

      ),
    );
}


