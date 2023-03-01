import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastOneYear extends StatelessWidget {
  const LastOneYear({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 80,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            monthWidget(
              screenWidth: screenWidth,
              monthName: "January",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "February",
              monthly_Value: '22345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "March",
              monthly_Value: '14637.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "April",
              monthly_Value: '10937.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "May",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "Jun",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "July",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "August",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "September",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "October",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "November",
              monthly_Value: '12345.90 tk',
            ),
            monthWidget(
              screenWidth: screenWidth,
              monthName: "December",
              monthly_Value: '12345.90 tk',
            ),
          ],
        ),
      ),
    );
  }
}

class monthWidget extends StatelessWidget {
  monthWidget({
    super.key,
    required this.screenWidth,
    required this.monthName,
    required this.monthly_Value,
  });

  final double screenWidth;
  String monthName;
  String monthly_Value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 10,
                  spreadRadius: 1),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                monthName,
                style: GoogleFonts.oswald(
                  fontSize: screenWidth * 0.040,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                monthly_Value,
                style: GoogleFonts.oswald(
                  fontSize: screenWidth * 0.040,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
