

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/controller/onboardingcontroller.dart';
import 'package:jobs/core/constants/color.dart';
import 'package:jobs/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController ,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    onBoardingList[i].image!,
                    width: 200,
                    height: 230,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    onBoardingList[i].title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            height: 2, color: AppColor.grey, fontSize: 20),
                      )),

                  // ClipPath(
                  //     clipper: WaveClipperOne(),
                  //     child: Container(
                  //       color: Colors.amber,
                  //       height: 50,
                  //       width: double.infinity,
                  //     ))
                ],
              ),
            ));
  }
}








