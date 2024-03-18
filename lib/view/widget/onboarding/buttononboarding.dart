import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/controller/onboardingcontroller.dart';
import 'package:jobs/core/constants/color.dart';

class CustomButtonOnBoarding extends GetView <OnBoardingControllerImp> {

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: (){
        
        controller.nextPage();
      },
      child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 81, 38, 87),
                            blurRadius: 16)
                      ],
                      color :AppColor.praimaryColor ,
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                        
                        // topLeft: Radius.circular(100),
                        // bottomLeft: Radius.circular(32),
                        // bottomRight: Radius.circular(32),
                        // topRight: Radius.circular(32),)
                      ),
                  child: const Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
    );
  }
}
