import 'package:flutter/material.dart';

class MenuIcerikSf extends StatelessWidget {
  const MenuIcerikSf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Iphone1612(),
        ]),
      ),
    );
  }
}

class Iphone1612 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 26,
                top: 51,
                child: Container(
                  width: 31,
                  height: 30,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: const Color.fromARGB(255, 8, 7, 5),
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 347,
                child: SizedBox(
                  width: 99,
                  height: 18,
                  child: Text(
                    'Soğuk sandviç\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 371,
                child: Container(
                  width: 54,
                  height: 19,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.19,
                        top: 0,
                        child: Container(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.01),
                          width: 34.70,
                          height: 18.46,
                          child: Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 246, 215, 15),
                            size: 18.46,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 1,
                        child: SizedBox(
                          width: 27,
                          height: 18,
                          child: Text(
                            '4.5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 426,
                child: Container(
                  width: 331,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 440,
                child: SizedBox(
                  width: 227,
                  child: Text(
                    'Description\n\n\nlorem30',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 571,
                child: SizedBox(
                  width: 69,
                  height: 27,
                  child: Text(
                    'Size',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 38,
                top: 618,
                child: Container(
                  width: 97,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 152,
                top: 618,
                child: Container(
                  width: 97,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 266,
                top: 618,
                child: Container(
                  width: 97,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 82,
                top: 628,
                child: SizedBox(
                  width: 21,
                  height: 26,
                  child: Text(
                    'S',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 190,
                top: 628,
                child: Text(
                  'M',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 628,
                child: SizedBox(
                  width: 22,
                  height: 31,
                  child: Text(
                    'L',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 1,
                top: 725,
                child: Container(
                  width: 392,
                  height: 137,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 190,
                top: 762,
                child: Container(
                  width: 161,
                  height: 51,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 197,
                top: 762,
                child: Container(
                  width: 170,
                  height: 55,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 170,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD9A9AA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 41,
                        top: 10,
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: const Color(0xFFA47F4B),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 765,
                child: SizedBox(
                  width: 94,
                  height: 37,
                  child: Text(
                    'price\n20tl',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 169,
                top: 51,
                child: Text(
                  'Detail',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 101,
                child: Container(
                  width: 147,
                  height: 220,
                  decoration: ShapeDecoration(
                    image: DecorationImage(    //BURAYA FOTO EKLE ASSETS VEYA DOSYA FİLAN SONRA ÇOĞALTIP NAVIGATOR EKLE.
                      image: NetworkImage("https://placehold.co/147x220"),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
