import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/core/constants/roates.dart';
import 'package:jobs/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  nextPage();
  onPageChanged(int indexpage);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int indexpage) {
    currentPage = indexpage;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
