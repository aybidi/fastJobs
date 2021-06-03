import 'package:flutter/material.dart';

class DisplayCard extends StatefulWidget {
  final Size size;
  final int index;
  final List displayList;
  final String cardType;

  DisplayCard(this.size, this.index, this.displayList, this.cardType);

  @override
  _DisplayCardState createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 16,
              child: null,
            );
          },
        );
      },
      child: AnimatedContainer(
        duration: duration,
        constraints: BoxConstraints(
          maxWidth: 210,
          minWidth: 210,
        ),
        //height: size.height * 0.3,
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0XFFa3bded), Color(0XFF6991c7),]
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: widget.size.width * 0.01,
                    vertical: widget.size.height * 0.01),
                child: Image.asset(
                  widget.displayList[widget.index].imageUrl,
                  fit: BoxFit.fitHeight,
//                  alignment: Alignment.center,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                  left: widget.size.width * 0.01,
                  right: widget.size.width * 0.01,
                  top: widget.size.height * 0.02,
                  bottom: widget.size.height * 0.005,
                ),
                child: Text(
                  widget.displayList[widget.index].name,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                  left: widget.size.width * 0.01,
                  right: widget.size.width * 0.01,
                  top: widget.size.height * 0.005,
                ),
                child: Text(
                  widget.displayList[widget.index].email,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
