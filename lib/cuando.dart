import 'package:dahiayguille/utils/colors.dart';
import 'package:dahiayguille/utils/flex_row.dart';
import 'package:dahiayguille/utils/title_table.dart';
import 'package:flutter/material.dart';

class Cuando extends StatelessWidget {
  const Cuando({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexRow(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Ceremonia(), SizedBox(width: 20, height: 20), Fiesta()],
    );
  }
}

class Ceremonia extends StatelessWidget {
  const Ceremonia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableBanner("Ceremonia"),
        _Item(title: "Día", subtitle: "10 de Mayo - 18:30hs"),
        _Item(
          title: "Lugar",
          subtitle: "Parroquia Virgen del Carmen y Santa Teresita",
        ),
        _Item(title: "Dirección", subtitle: "Irigoitia 1007"),
      ],
    );
  }
}

// Dia: Sábado 10 de Mayo 20:00hs
// Lugar: Chacra La Redención
// Direccion: Cno. de la Redención 6881
class Fiesta extends StatelessWidget {
  const Fiesta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableBanner("Celebración"),
        _Item(title: "Día", subtitle: "10 de Mayo - 20:00hs"),
        _Item(title: "Lugar", subtitle: "Chacra La Redención"),
        _Item(title: "Dirección", subtitle: "Cno. de la Redención 6881"),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final String title;
  final String subtitle;
  const _Item({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 20,
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
