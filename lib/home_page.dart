import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:burger_ui/page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int tabs = 0;

  List dataBurger = [
    {
      "name": "Gamburger",
      "image": "https://cp.ectn.uz/files//0622/gamburger_evos.png",
      "rating": "5.0",
      "price": 20000,
      "distance": "4.3 km",
    },
    {
      "name": "Dublburger",
      "image": "https://cp.ectn.uz/files//web/15.jpg",
      "rating": "4.2",
      "price": "29000",
      "distance": "3.3 km",
    },
    {
      "name": "Doublecheeseburger",
      "image": "https://cp.ectn.uz/files//0622/Double_Cheeseburger_evos.png",
      "rating": "4.7",
      "price": "28000",
      "distance": "8.3 km",
    },
    {
      "name": "Chizburger",
      "image": "https://cp.ectn.uz/files//0622/chizburger_evos.png",
      "rating": "3.6",
      "price": "30000",
      "distance": "1.3 km",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              offset: Offset(2,3),
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5
                          )]
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.1)
                      ),
                      child: Center(
                        child: Image.network("https://pbs.twimg.com/media/EJgg_pTXkAAF4WV.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Burger qidirish va",style: GoogleFonts.raleway(fontWeight: FontWeight.w400,fontSize: 30)),
                      Text("buyurtma berish",style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 30),)
                    ],
                  )
              ),
              SizedBox(height: 45,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Burger qidirish",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            tabs = 0;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 45,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("🍖",style: TextStyle(fontSize: 20),),
                                SizedBox(width: 5,),
                                Text("go'shtli",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: tabs == 0 ? Colors.black : Colors.grey,width: 1.5),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            tabs = 1;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 45,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("🧀",style: TextStyle(fontSize: 20),),
                                SizedBox(width: 5,),
                                Text("Pishloqli",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: tabs == 1 ? Colors.black : Colors.grey,width: 1.5),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            tabs = 2;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 45,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("🌶",style: TextStyle(fontSize: 20),),
                                SizedBox(width: 5,),
                                Text("achchiq",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: tabs == 2 ? Colors.black : Colors.grey,width: 1.5),
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Most Popular",style: GoogleFonts.raleway(fontSize: 22,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 10,),
              Visibility(
                visible: tabs == 0 ? true : false,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 3),),
                        itemCount: dataBurger.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(dataBurger[index])));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0,5),
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 7
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 35,),
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 100,
                                        child: Expanded(child: Image.network("${dataBurger[index]['image']}",))),
                                    SizedBox(height: 10,),
                                    Text("${dataBurger[index]['name']}",style: GoogleFonts.raleway(fontWeight: FontWeight.w700,fontSize: 16),),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star,color: Colors.orange,size: 20,),
                                        Text(" ${dataBurger[index]['rating']} | ",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500),),
                                        Text("${dataBurger[index]['distance']}",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("\$",style: TextStyle(color: Colors.orange),),
                                          Text("${dataBurger[index]['price']}",style: GoogleFonts.manrope(fontWeight: FontWeight.w700,fontSize: 28),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                ),
              ),
              Visibility(
                visible: tabs == 1 ? true : false,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.white,
                  child: Center(
                    child: Text("Sold Out",style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
              Visibility(
                visible: tabs == 2 ? true : false,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.white,
                  child: Center(
                    child: Text("Sold Out",style: TextStyle(fontSize: 30),),
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