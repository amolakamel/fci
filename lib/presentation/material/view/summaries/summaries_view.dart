import 'package:flutter/material.dart';

class SummariesView extends StatelessWidget {
  const SummariesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
          'Summaries',
        style: TextStyle(
            color: Colors.cyan
        ),
      ),
    );

  }
}
