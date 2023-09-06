// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:coffee_app/constanse.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                children: const [
                  Image(
                    image: AssetImage("assets/images/coffee1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/images/cola.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/images/splash.jpg"),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 60,
              left: 16,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: cFilledIconColor.withOpacity(0.4),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(IconlyLight.arrowLeft2),
                  iconSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            const BottomDetailsContainer(),
          ],
        ),
      ),
    );
  }
}

class BottomDetailsContainer extends StatelessWidget {
  const BottomDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 450,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
          ),
          color: cBacgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Cappucino Latte",
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Complex, yet smooth flavor made to order.",
                style: GoogleFonts.sourceSansPro(
                  fontSize: 17,
                  letterSpacing: 0.50,
                  color: cDiscreption,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  children: [
                    const Icon(
                      IconlyBold.star,
                      size: 28,
                      color: cYellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "4.5",
                        style: GoogleFonts.poppins(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: cOrange),
                      ),
                    ),
                    Text(
                      "(10k)",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        letterSpacing: 1,
                        color: cDiscreption,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Size",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    PriceExpandedCard(
                      dSale: '190',
                    ),
                    SizedBox(width: 16),
                    PriceExpandedCard(
                      dSale: '280',
                    ),
                    SizedBox(width: 16),
                    PriceExpandedCard(
                      dSale: '310',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CountAndPrice(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cFilledIconColor,
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    ArtSweetAlert.show(
                      context: context,
                      artDialogArgs: ArtDialogArgs(
                        type: ArtSweetAlertType.success,
                        title: "Done",
                        text: "Item added to Order Successfully",
                        confirmButtonText: "Thanks!",
                        confirmButtonColor: cFilledIconColor,
                        sizeSuccessIcon: 80,
                      ),
                    );
                  },
                  child: Text(
                    "Add to Order",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CountAndPrice extends StatefulWidget {
  const CountAndPrice({
    super.key,
  });

  @override
  State<CountAndPrice> createState() => _CountAndPriceState();
}

class _CountAndPriceState extends State<CountAndPrice> {
  int count = 0;
  static const double itemPrice = 5.99;
  double newPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: cCardColor,
              child: IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 24,
                ),
                onPressed: () {
                  setState(() {
                    if (count <= 0) {
                      count = count;
                      newPrice = newPrice;
                    } else {
                      count--;
                      newPrice -= itemPrice;
                    }
                  });
                },
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                minWidth: 50,
              ),
              child: Text(
                "$count",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CircleAvatar(
              backgroundColor: cCardColor,
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    count++;
                    newPrice += itemPrice;
                  });
                },
              ),
            ),
          ],
        ),
        Text(
          "\$${newPrice.toStringAsFixed(2)}",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}

class PriceExpandedCard extends StatelessWidget {
  const PriceExpandedCard({
    Key? key,
    required this.dSale,
    this.isSelected = false,
  }) : super(key: key);

  final String dSale;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: cFilledIconColor),
            color: cCardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Icon(
                  Icons.local_drink_outlined,
                  size: 24,
                  color: cFilledIconColor,
                ),
              ),
              Text(
                dSale,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  letterSpacing: 1,
                  color: cFilledIconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
