import 'package:flutter/material.dart';
import 'package:flutter_practice/UI1/Constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  SplashColor color = SplashColor();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: color.homeBackground,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 20),
                    child: Text(
                      'Welcome',
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 10),
                    child: Text(
                      ', Rabby',
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0, right: 0.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/OP.jpg'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 25,
                ),
                child: Text(
                  'Let\'s select the best taste for your next\ncoffee break!',
                  style: GoogleFonts.lato(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Taste of the Week',
                      style: GoogleFonts.mina(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      'See all',
                      style: GoogleFonts.lato(
                        color: color.shadowColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 40),
                    child: Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffcdaa7d),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0, left: 20),
                            child: Text(
                              'CoffeShop\'s',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 10,
                            ),
                            child: Text(
                              'Coffe Misto'.toUpperCase(),
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 3,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              left: 10,
                            ),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 25.0,
                                  left: 10,
                                ),
                                child: Text(
                                  '\$4.99',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                  top: 25,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  radius: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    left: 100,
                    child: Image.asset(
                      'assets/OP.jpg',
                      height: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 10,
                ),
                child: Container(
                  height: size.height / 9,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                    color: Color(0xff36371D),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      '\$50',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
