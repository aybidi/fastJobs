import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 370, minHeight: 170),
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/uwaterloo.png',
              scale: 5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: 'U',
                  style: TextStyle(
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Waterloo',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      )
                    )
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                'find research labs',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}