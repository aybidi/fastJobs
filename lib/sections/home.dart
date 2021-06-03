import 'package:fastjobs/models/professors_model.dart';
import 'package:fastjobs/sections/displaySection/display_section.dart';
import 'package:fastjobs/sections/topSection/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0XFF1e3c72), Color(0XFF2a5298),],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopSection(),
                SectionTitle('HCI', size, Colors.transparent),
                DisplaySection(
                  size: size,
                  displayList: professorList,
                  type: '0',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final Size size;
  final Color color;
  SectionTitle(this.title, this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 90, minHeight: 50),
      padding: EdgeInsets.all(
        25.0,
      ),
      width: double.infinity,
      color: color,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

//Container(
//constraints: BoxConstraints(maxHeight: 370, minHeight: 300),
//padding: EdgeInsets.only(bottom: 20),
//width: double.infinity,
//color: Colors.white,
//child: ListView(
//scrollDirection: Axis.horizontal,
//children: List.generate(professorList.length, (index) => DisplayCard(size, index, professorList, '0'),
//),
//),
//)
