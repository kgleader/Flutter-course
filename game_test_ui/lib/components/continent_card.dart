import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/continent.dart';

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    Key? key,
    required this.cont,
    required this.onTap,
  }) : super(key: key);

  final Continent cont;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              cont.name,
              style: const TextStyle(fontSize: 17),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/continents/${cont.icon}.svg',
                  color: cont.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
