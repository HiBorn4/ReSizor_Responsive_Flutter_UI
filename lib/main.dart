// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double greyCardWidth = screenWidth * 0.25; // 20% of screen width

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white, // Representing the screen background
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                            ),
                            CardOne(),
                            Container(
                              height: 150,
                            ),
                            CardTwo(),
                          ],
                        ),
                        Positioned(
                          top:
                              328, // Half above CardTwo and half above the red card
                          child: Container(
                            color: Colors.grey[
                                400], // Representing the overlaying grey card
                            width: greyCardWidth,
                            height: 65, // Adjust the height as needed
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CardOne extends StatelessWidget {
  // Define the desired ratio for the red card width
  final double redCardWidthRatio = 0.93; // Adjust as needed

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.red[300], // Representing the card background
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            blurRadius: 10, // Spread of the shadow
            offset: Offset(0, 5), // Offset of the shadow
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = constraints.maxWidth *
              redCardWidthRatio; // Calculate red card width based on the ratio
          final greenAreaWidth = cardWidth * 0.93;
          final greyAreaWidth = cardWidth * 0.28;

          return Container(
            width: cardWidth, // Set the red card width
            padding: EdgeInsets.all(16.0), // Adding padding to the entire card
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align children to the left
              children: [
                Container(
                  color: Colors.grey[400], // Representing the grey card
                  width: greyAreaWidth,
                  height: 40, // Adjust the height as needed
                  alignment: Alignment.center,
                ),
                Container(
                  color: Colors.green[200], // Representing the green area
                  width: greenAreaWidth,
                  height: 43, // Adjust the height as needed
                  alignment: Alignment.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CardTwo extends StatelessWidget {
  // Define the desired ratio for the red card width
  final double redCardWidthRatio = 0.93; // Adjust as needed

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.red[300], // Representing the card background
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            blurRadius: 10, // Spread of the shadow
            offset: Offset(0, 5), // Offset of the shadow
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = constraints.maxWidth *
              redCardWidthRatio; // Calculate red card width based on the ratio
          final greenAreaWidth = cardWidth * 0.98;
          final greyAreaWidth = cardWidth * 0.28;

          return Container(
            width: cardWidth, // Set the red card width
            padding: EdgeInsets.all(16.0), // Adding padding to the entire card
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align children to the left
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Colors
                          .red[300], // Cover the portion inside the red card
                      width:
                          greyAreaWidth / 2, // Half the width of the grey card
                      height: 38, // Adjust the height as needed
                    ),
                  ],
                ),
                Container(
                  height: 5,
                ),
                Container(
                  color: Colors.green[200], // Representing the green area
                  width: greenAreaWidth,
                  height: 40, // Adjust the height as needed
                  alignment: Alignment.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
