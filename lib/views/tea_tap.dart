import 'package:coffee_app/models/coffee_card_model.dart';
import 'package:coffee_app/widgets/coffee_item_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TeaTap extends StatelessWidget {
  const TeaTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/cup.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "Recommended",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: coffeeCardList.length,
            itemBuilder: (context, index) => CoffeeItemScroll(
              item: coffeeCardList[index],
            ),
          ),
        ],
      ),
    );
  }
}
