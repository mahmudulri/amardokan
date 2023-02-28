import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:slide_digital_clock/slide_digital_clock.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  String dateStr = DateTime.now().minute.toString();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Amar Dokan",
                        style: GoogleFonts.robotoSlab(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      DigitalClock(
                        secondDigitTextStyle: GoogleFonts.oswald(),
                        hourMinuteDigitTextStyle: GoogleFonts.oswald(
                          fontSize: 18,
                        ),
                        colon: Icon(Icons.ac_unit, size: 12),
                        colonDecoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Radhanagor bazar, Sreepur , Magura",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "01701987948 , 01986072587",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.black45,
            ),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Container(
              height: screenHeight * 0.150,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3498db),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Due",
                                    style: GoogleFonts.oswald(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "1028.40 tk",
                                    style: GoogleFonts.oswald(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Monthly Sales",
                                    style: GoogleFonts.oswald(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "14,028.40 tk",
                                    style: GoogleFonts.oswald(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
