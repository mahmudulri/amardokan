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
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // centerTitle: true,
        title: Row(
          children: [
            Text(
              "Amar",
              style: GoogleFonts.robotoSlab(
                fontSize: screenWidth * 0.060,
                fontWeight: FontWeight.w600,
                color: Color(0xff3498db),
              ),
            ),
            Text(
              "Dokan",
              style: GoogleFonts.robotoSlab(
                fontSize: screenWidth * 0.040,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.sort,
                color: Colors.black,
                size: screenWidth * 0.080,
              ));
        }),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
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
                        "My Shop Name",
                        style: GoogleFonts.robotoSlab(
                          fontSize: screenWidth * 0.050,
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
                      fontSize: screenWidth * 0.040,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "01701987948 , 01986072587",
                    style: GoogleFonts.roboto(
                      fontSize: screenWidth * 0.040,
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
                                    "Last Month due",
                                    style: GoogleFonts.oswald(
                                      fontSize: screenWidth * 0.040,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "1028.40 tk",
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
                        ),
                        SizedBox(
                          width: screenWidth * 0.030,
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
                                    "Last 6 months Due",
                                    style: GoogleFonts.oswald(
                                      fontSize: screenWidth * 0.040,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "14,028.40 tk",
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
