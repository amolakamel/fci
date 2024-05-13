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
  String? selectedButton;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.gray,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Divider(
              thickness: 5,
              color: Color(0XFF2B2B2B),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    Icons.people,
                    color: ColorManager.lightBlue,
                    size: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
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
                style: TextStyle(
                  fontSize: 21, // Changed text size to 21
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4, // Adjust the height as per your requirement
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildDeveloperButton('UX/UI Designers', AppStrings.ui),
                  buildDeveloperButton(
                      'Mobile APP Developers', AppStrings.mobile),
                  buildDeveloperButton('Backend Developers', AppStrings.back),
                ],
              ),
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
              if (selectedButton == buttonText) {
                return ColorManager.lightBlue;
              } else {
                return ColorManager.gray;
              }
            }),
          ),
          onPressed: () {
            setState(() {
              if (selectedButton != buttonText) {
                selectedButton = buttonText;
                this.developerInfo = developerInfo;
              }
            });

            timer?.cancel();
            timer = Timer(const Duration(milliseconds: 200), () {
              setState(() {
                // Do nothing here to keep the button colored until another button is pressed
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
                  color: selectedButton == buttonText
                      ? Colors.white
                      : ColorManager.gray, // Change text color to white when info is displayed
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
