import 'package:amardokan/pages/customerlist.dart';
import 'package:amardokan/pages/homepage.dart';
import 'package:amardokan/pages/staff_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavPage extends StatefulWidget {
  BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List pages = [
    Homepage(),
    CustomerList(),
    StaffPage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.070,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                height: screenHeight * 0.010,
              ),
              Text(
                "MD Mahmudul Hasan",
                style: GoogleFonts.acme(
                  fontSize: screenHeight * 0.022,
                ),
              ),
              Text(
                "Admin",
                style: GoogleFonts.acme(
                  fontSize: screenHeight * 0.018,
                ),
              ),
              Text(
                "01701987948",
                style: GoogleFonts.acme(
                  fontSize: screenHeight * 0.022,
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: screenHeight * 0.050,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  Text(
                    "My Statistic",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.022,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.050,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "All Stuffs Statistic",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.022,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Only for admin",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.012,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.025,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  Text(
                    "Stuff-1",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.022,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.025,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  Text(
                    "Stuff-2",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.022,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.025,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  Text(
                    "Stuff-3",
                    style: GoogleFonts.acme(
                      fontSize: screenHeight * 0.022,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    // width: screenWidth * 0.350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Log Out",
                            style: GoogleFonts.acme(
                              fontSize: screenHeight * 0.022,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
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
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,

        backgroundColor: Colors.transparent,
        // height: 70,
        color: Color(0xff3498db),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.person,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
