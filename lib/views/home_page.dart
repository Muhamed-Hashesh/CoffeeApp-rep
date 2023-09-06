import 'package:coffee_app/constanse.dart';
import 'package:coffee_app/widgets/cusromized_app_bar.dart';
import 'package:coffee_app/views/tea_tap.dart';
import 'package:coffee_app/views/coffee_tap.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: cBacgroundColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: CustomizedAppBar(),
        ),
        body: TabBarView(
          children: [
            const CoffeeTap(),
            const TeaTap(),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
