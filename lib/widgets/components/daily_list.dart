import 'package:flutter/material.dart';
import 'package:ih8clouds/models/json/one_call.dart';
import 'package:ih8clouds/widgets/components/daily_tile.dart';

class DailyList extends StatelessWidget {
  const DailyList({Key? key, required this.response}) : super(key: key);

  final Onecall? response;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: const EdgeInsets.only(left: 5, right: 5),
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
          8,
          (index) => DailyTile(
            response: response,
            index: index,
          ),
        ),
      ),
    );
  }
}
