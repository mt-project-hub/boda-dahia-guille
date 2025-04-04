import 'package:dahiayguille/utils/colors.dart';
import 'package:dahiayguille/utils/flex_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/backflor.png"),
            Image.asset("assets/flor.png"),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Date(),
        FlexRow(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Dahia',
              style: TextStyle(fontSize: 65, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 20),

            ///add a pading top to this image
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/andand.png", height: 60, width: 60),
            ),
            SizedBox(width: 20),
            Text(
              'Guille',
              style: TextStyle(fontSize: 65, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: AppColors.orange,
        ),
        SizedBox(height: 20),
        SvgPicture.asset(
          "assets/comilla-apertura.svg",
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(AppColors.orange, BlendMode.srcIn),
        ),
        SizedBox(height: 20),
        Text(
          'Todos somos mortales, hasta el primer\n beso y la segunda copa de vino',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontFamily: "DancingScript"),
        ),
        SizedBox(height: 20),
        SvgPicture.asset(
          "assets/comilla-cierre.svg",
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(AppColors.orange, BlendMode.srcIn),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final totalWidth = screenWidth * 0.8;
    final textWidth = 150.0; // Approximate width of the text
    final spacing = isMobile ? 5.0 : 20.0;
    final containerWidth = (totalWidth - textWidth - (spacing * 2)) / 2;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 1, width: containerWidth, color: AppColors.orange),
        SizedBox(width: spacing),
        Text(
          '10.05.2025',
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 2,
            fontFamily: "DancingScript",
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(width: spacing),
        Container(height: 1, width: containerWidth, color: AppColors.orange),
      ],
    );
  }
}
