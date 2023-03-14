import 'package:flutter/cupertino.dart';

class StepProvider extends ChangeNotifier
{
  int i=0;

  void jumpStep(int index)
  {
    i=index;
    notifyListeners();
  }

  void backstep()
  {
    i--;
    notifyListeners();
  }

  void nextstep()
  {
    i++;
    notifyListeners();
  }

  void selected(int index)
  {
    i=index;
  }
}