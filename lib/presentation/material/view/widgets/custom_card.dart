import 'package:fci/presentation/main/widgets/custom_text_button.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIconsDownload extends StatelessWidget {
  const ButtonIconsDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:8,bottom: 1,right: 8, ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight:Radius.circular(12) ),

            color: Colors.white.withOpacity(0.4)
        ),
        child: const Icon(
          Icons.download,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}


class ButtonIconsDelete extends StatelessWidget {
  const ButtonIconsDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:4,bottom: 8,right: 8, ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomRight:Radius.circular(12) ),

            color: Colors.white.withOpacity(0.4)
        ),
        child: const Icon(
          Icons.delete,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
class textButton extends StatelessWidget {
  textButton({super.key,this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,right: 10,left: 16,bottom: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),topLeft:Radius.circular(15) ),

            color: Colors.white.withOpacity(0.4)
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 55, // Diameter of the circle
                height: 55, // Diameter of the circle
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Color of the circle
                ),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              text!,
              textAlign : TextAlign.center,
              overflow: TextOverflow.clip,
              style: const TextStyle(

                  fontSize: 20,
                  color: Colors.white, // Text color
                  shadows: [
                    Shadow(
                      offset: Offset(-4, -4), // Offset of the shadow
                      color: Colors.black, // Border color
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
