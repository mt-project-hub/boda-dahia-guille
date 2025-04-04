import 'package:dahiayguille/utils/colors.dart';
import 'package:flutter/material.dart';

class TableBanner extends StatelessWidget {
  final String title;
  const TableBanner(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset("assets/table1.png"),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset("assets/table2.png"),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              color: AppColors.orange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
