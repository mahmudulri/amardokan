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
      drawer: Drawer(),
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
