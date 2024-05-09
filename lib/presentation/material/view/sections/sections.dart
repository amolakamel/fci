import 'package:fci/presentation/material/view/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SectionsView extends StatelessWidget {
  const SectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
        'Sections',
        style: TextStyle(
           color: Colors.cyan
        ),
      ),
    );

  }
}
