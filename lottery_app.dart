import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lottery App",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Lottery winning number is 2",
              style: GoogleFonts.lato(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: x == 2 ? 500 : 200,
            width: 300,
            decoration: BoxDecoration(
              color: x == 2 ? Colors.yellow : Colors.grey.withOpacity(.30),
              borderRadius: BorderRadius.circular(12),
            ),
            child: x == 2
                ? Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done, size: 40, color: Colors.green),
                        SizedBox(height: 15),
                        Text(
                          "Congratulations you have won the lottery \n your number is $x ",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.error, size: 40, color: Colors.red),
                        SizedBox(height: 15),
                        Text(
                          "Better Luck Next Time \n Your number is $x \n Try Again!",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,

        onPressed: () {
          x = random.nextInt(6);
          print(x);
          setState(() {});
        },
        child: Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
