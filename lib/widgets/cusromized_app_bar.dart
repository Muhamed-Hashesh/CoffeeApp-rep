
import 'package:coffee_app/constanse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: cBacgroundColor,
      elevation: 0,
      title: Text(
        "Drinkable",
        style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.scan,
            size: 28,
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.search,
              size: 28,
            ),
          ),
        ),
      ],
      bottom: TabBar(
        // padding: EdgeInsets.only(bottom: 16),
        indicatorColor: cFilledIconColor,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: cFilledIconColor,
        unselectedLabelColor: const Color(0XFFE0DCDC),
        tabs: [
          Tab(
            child: Text(
              "Coffee",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  letterSpacing: 0.50,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Tab(
            child: Text(
              "Tea",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  letterSpacing: 0.50,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Tab(
            child: Text(
              "Juice",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  letterSpacing: 0.50,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Tab(
            child: Text(
              "Cake",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  letterSpacing: 0.50,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
