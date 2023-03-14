import 'package:flutter/cupertino.dart';

class StepperProvide extends ChangeNotifier

{
  int i=0;
    void backstep()
    {
      i--;
      notifyListeners();
    }
    void nextsetp()
    {
      i++;
      notifyListeners();
    }
    void jumpstep(int value)
    {
      i=value;
      notifyListeners();
    }
}