import 'package:amardokan/widgets/lastoneyear.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/lastyear_section.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  String dateStr = DateTime.now().minute.toString();
  Map<String, double> dataMap = {
    "Kadirpara": 5434,
    "Radhanagor": 3324,
    "Mangondanga": 23452,
    "Kuporia": 23242,
    "Boralda": 43242,
    "Sabdalpur": 23421,
    "Shunatondi": 32423,
  };
  List<Color> colorlist = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.cyan,
    Colors.blue,
    Colors.amber,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                        "Good Life Pharmacy",
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
                                    "Unpaid Customers",
                                    style: GoogleFonts.oswald(
                                      fontSize: screenWidth * 0.040,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "136",
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
                                    "Total Unpaid Amount",
                                    style: GoogleFonts.oswald(
                                      fontSize: screenWidth * 0.040,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "143,028.40 tk",
                                    style: GoogleFonts.oswald(
                                      fontSize: screenWidth * 0.040,
                                      color: Colors.red,
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
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Row(
              children: [
                Text(
                  "Unpaid Amount of 12 Months",
                  style: GoogleFonts.robotoSlab(
                    fontSize: screenWidth * 0.050,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            LastOneYear(),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            //// Chart.......................

            PieChart(
              dataMap: dataMap,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 25,
              chartRadius: MediaQuery.of(context).size.width / 3.2,
              colorList: colorlist,
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 25,
              // centerText: "",
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: true,
                legendShape: BoxShape.rectangle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: false,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
