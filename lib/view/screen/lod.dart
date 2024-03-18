import 'package:flutter/material.dart';
import 'package:jobs/core/constants/color.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 100,
            height: 200,
            color: AppColor.praimaryColor,
          ),
        ),
      ],
    ));
  }
}
