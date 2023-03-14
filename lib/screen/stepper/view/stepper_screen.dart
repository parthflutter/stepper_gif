import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_gif/screen/stepper/provider/Stepper_provide.dart';

class Stepper_screen extends StatefulWidget {
  const Stepper_screen({Key? key}) : super(key: key);

  @override
  State<Stepper_screen> createState() => _Stepper_screenState();
}

class _Stepper_screenState extends State<Stepper_screen> {
  StepperProvide?stepperProvide,stepperProvidet;
  @override
  Widget build(BuildContext context) {
    stepperProvide=Provider.of(context,listen:false);
    stepperProvidet=Provider.of(context,listen:true);
    return SafeArea(
      child: Scaffold(
      appBar:AppBar(
            title: Text('Edit Your Profile'),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.blueAccent, Colors.greenAccent])),
            ),
      ),
        body:  Theme(
          data: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: ColorScheme.light(primary: Colors.blue),
          ),

          child: Stepper(
              type: StepperType.vertical,
              onStepTapped: (index){
                stepperProvide!.jumpstep(index);
              },
              steps: [
             Step(
               isActive:true,
               title: Text('Profile Picture'),
               content: ListTile(
                 leading: Icon(Icons.photo),
                 title: Text("Parth Savaliya"),
               ),
             ),
             Step(
               isActive:true,
               title: Text('Name'),
               content:TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Phone'),
              content: TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Email'),
               content: TextField(),
               ),
             Step(
               isActive:true,
               title: Text('DOB'),
    content: TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Gender'),
               content: TextField(),
               ),
             Step(
               isActive:true,
               title: Text('Current Location'),
               content: TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Nationalities'),
               content: TextField(
               ),
               subtitle: Icon(Icons.flag),
             ),
             Step(
               isActive:true,
               title: Text('Religion'),
               content: TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Language'),
               content: TextField(),
             ),
             Step(
               isActive:true,
               title: Text('Biography'),
               content: TextField(),
             ),
              ],
              currentStep: stepperProvidet!.i,
              onStepCancel: (){
                stepperProvide!.nextsetp();
              },
              onStepContinue: (){
                stepperProvide!.nextsetp();
              },
            ),
        ),
      ),
      );
  }
}
