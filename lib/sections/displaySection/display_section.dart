import 'package:fastjobs/sections/displaySection/components/display_card.dart';
import 'package:flutter/material.dart';

class DisplaySection extends StatelessWidget {
  final Size size;
  final List displayList;
  final String type;

  DisplaySection({this.size, this.displayList, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 370, minHeight: 300),
      padding: EdgeInsets.only(bottom: 75.0),
      width: double.infinity,
      color: Colors.transparent,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(displayList.length, (index) => DisplayCard(size, index, displayList, type),),
      ),
    );
  }
}