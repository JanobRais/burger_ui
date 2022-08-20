import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {

  var databurger;

  DetailPage([this.databurger]);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  bool heart = false;

  int total = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(15.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 300,
                          child: Image.network("${widget.databurger['image']}"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.75),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.orange,
                                    size: 20,),
                                  SizedBox(width: 3,),
                                  Text("${widget.databurger['rating']}",
                                    style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w400),)
                                ],
                              ),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Container(
                              width: 200,
                              height: 120,
                              child: Text("${widget.databurger['name']}",
                                style: GoogleFonts.manrope(fontSize: 35,
                                    fontWeight: FontWeight.w700,
                                    wordSpacing: 2),),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  InkWell(onTap: () {
                                    if (total < 1) {
                                      setState(() {
                                        total = 1;
                                      });
                                    } else if (total > 1) {
                                      setState(() {
                                        total -= 1;
                                      });
                                    }
                                  },
                                      child: Text(
                                        "-", style: TextStyle(fontSize: 30),)),
                                  Text(
                                    "$total", style: TextStyle(fontSize: 20),),
                                  InkWell(onTap: () {
                                    setState(() {
                                      total += 1;
                                    });
                                  },
                                      child: Text(
                                        "+", style: TextStyle(fontSize: 20),))
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Tarkibi", style: GoogleFonts.manrope(
                                fontSize: 18, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("🧀", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("pishloq", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("🍖", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("go'sht", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("🍅", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("pomidor", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("🥔", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("kartoshka", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("tavsif", style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600, fontSize: 18),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "Yumshoq bulochka, bir bo‘lak eritilgan cheddar pishloqi, tuzlangan bodring, yangi pomidor va tiniq aysberg salatasi, ikkita maxsus sousli suvli mol go‘shti."),
                        SizedBox(height: 110,)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_rounded)),
                      Text("Sotib olish", style: GoogleFonts.raleway(
                          fontSize: 26, fontWeight: FontWeight.w500),),
                      IconButton(onPressed: () {
                        if (heart == false) {
                          setState(() {
                            heart = true;
                          });
                        } else {
                          setState(() {
                            heart = false;
                          });
                        }
                      },
                          icon: heart == false ? Icon(
                              Icons.favorite_border_outlined) : Icon(
                            Icons.favorite, color: Colors.red,))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 600),
                  padding: EdgeInsets.only(top: 50),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white.withOpacity(0.5), Colors.white]
                      )
                  ),
                  child: Row(
                    children: [
                      Text("\$", style: TextStyle(color: Colors.black),),
                      Text("${widget.databurger['price']}",
                        style: GoogleFonts.manrope(
                            fontSize: 38, fontWeight: FontWeight.w600),),
                      SizedBox(width: 50,),
                      Container(
                        width: 190,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Center(
                          child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("muvofiqiyatli qo'shildi"),
                                      backgroundColor: Colors.green,
                                      shape: StadiumBorder(),
                                      behavior: SnackBarBehavior.floating,));
                              },
                              child: Text("to'lov kartasi qo'shish",
                                style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}