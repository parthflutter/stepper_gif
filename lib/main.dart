import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_gif/screen/stepper/provider/Stepper_provide.dart';
import 'package:stepper_gif/screen/stepper/view/stepper_screen.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> StepperProvide(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Stepper_screen(),
      },
    ),
  ),
  );
}