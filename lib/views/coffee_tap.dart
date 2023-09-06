
import 'package:coffee_app/models/coffee_card_model.dart';
import 'package:coffee_app/views/details_page.dart';
import 'package:coffee_app/widgets/coffee_card_scroll.dart';
import 'package:coffee_app/widgets/coffee_item_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTap extends StatelessWidget {
  const CoffeeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(1),
            height: 360,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: coffeeCardList.length,
              itemBuilder: (context, index) => CoffeeCardScroll(
                card: coffeeCardList[index],
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailsPage();
                  }));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "Popular",
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
