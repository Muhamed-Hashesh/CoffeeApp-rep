import 'package:coffee_app/constanse.dart';
import 'package:coffee_app/models/coffee_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCardScroll extends StatelessWidget {
  const CoffeeCardScroll({super.key, required this.card, required this.ontap});

  final CoffeeCard card;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 220,
          height: 350,
          decoration: BoxDecoration(
            color: cCardColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      card.image,
                      fit: BoxFit.cover,
                      height: 190.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 4),
                    child: Text(
                      card.name,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              card.desc,
                              style: GoogleFonts.sourceSansPro(
                                  color: cDiscreption,
                                  fontSize: 13,
                                  letterSpacing: 0.75),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                card.price,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: cFilledIconColor,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.bag,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
