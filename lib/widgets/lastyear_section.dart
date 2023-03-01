import 'package:flutter/material.dart';

class LastYearSEction extends StatelessWidget {
  const LastYearSEction({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 100,
        width: screenWidth,
        color: Color(0xff3498db),
      ),
    );
  }
}
