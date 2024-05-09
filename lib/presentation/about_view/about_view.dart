import 'dart:async';

import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeveloperPage extends StatefulWidget {
  @override
  _DeveloperPageState createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  String developerInfo = '';
  bool infoDisplayed = false;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.gray,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1.5 / 10,
                child: Column(
                  children: [
                    Icon(
                      Icons.people,
                      color:
                          infoDisplayed ? ColorManager.primary : Colors.white,
                      size: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Center(
                        child: Text(
                          AppStrings.developers,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 5,
              color: Color(0XFF2B2B2B),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                developerInfo.isNotEmpty
                    ? developerInfo
                    : AppStrings.developersInfo,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildDeveloperButton('UX/UI Designers', AppStrings.ui),
                buildDeveloperButton(
                    'Mobile APP Developers', AppStrings.mobile),
                buildDeveloperButton('Backend Developers', AppStrings.back),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeveloperButton(String buttonText, String developerInfo) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: ElevatedButton(
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.pressed)) {
                return ColorManager.primary;
              } else {
                return infoDisplayed ? ColorManager.primary : ColorManager.gray;
              }
            }),
          ),
          onPressed: () {
            setState(() {
              this.developerInfo = developerInfo;
              infoDisplayed = true;
            });

            timer = Timer(const Duration(seconds: 10), () {
              setState(() {
                infoDisplayed = false;
              });
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 8),
              Text(
                buttonText,
                style: TextStyle(
                  color: infoDisplayed
                      ? Colors.white
                      : ColorManager
                          .gray, // Change text color to white when info is displayed
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }
}
