import 'package:fci/presentation/material/view/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ExamsView extends StatelessWidget {
  const ExamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
          'Exams',
        style: TextStyle(
            color: Colors.cyan
        ),
      ),
    );

  }
}
