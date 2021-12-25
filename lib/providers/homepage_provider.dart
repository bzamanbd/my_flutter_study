import 'package:flutter/material.dart';
class HomePageProvider extends ChangeNotifier{
  bool? isEligible;
  String? eligibleMessage='';
  void eligibilityChecker(int age){
    if(age>=18){
      isEligible=true;
      eligibleMessage='You are Eligible';
      notifyListeners();
    }else{
      isEligible=false;
      eligibleMessage='You are not Eligible';
      notifyListeners();
    }
  }
}