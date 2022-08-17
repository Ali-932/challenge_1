import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {


  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        bottomNavigationBar:null,
        body: Container(
          color: const Color(0xff1c1a28),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/x.jpg'),
                  Container(
                    margin: EdgeInsets.only(left: 25,top: 10),
                    child: Row(
                      children: [
                        Text('9:41',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),),
                        Container(width: 320,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.wifi,color: Colors.white,size: 15,),
                              Icon(Icons.network_cell,color: Colors.white,size: 15,),
                              Icon(Icons.battery_6_bar_sharp,color: Colors.white,size: 15,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 140,
                    left: 20,
                    child: Text(
                      'RATU ILMU HITAM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 180, left: 16),

                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            '6.5/10 from IMDb',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(top:  210, left: 16,bottom: 80),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xff38344b)),
                          child: const Text('Horror',style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                          ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xff38344b)),
                          child: const Text('Drama',style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 240,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff241977)
                      ),
                      child: const Icon(Icons.play_arrow,color: Colors.white,size: 55,),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 150,
                    height: 200,
                    decoration: const BoxDecoration(
                    ),
                    child: ClipRRect
                       (borderRadius:BorderRadius.circular(16)
                        ,child: Image.asset('assets/images/xx.jpg')),
                  ),
                  Container(
                    width: 200,
                    height: 170,
                    margin: EdgeInsets.only(left: 20),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Director : Kimo Stamboel",style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16
                        ),),
                        Text("Writer    : Aoko anwar",style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16
                        ),)
,                        Text("duration : 1h 39m ",style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16
                        ),)
,                        Text("Rating    : D(+17)",style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16
                        ),
                        )
                      ],
                    )
                    ,)
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 185,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xff241977),width: 2)
                      )
                    ),
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Schedule', style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      )
                    ),
                  ),
                  Container(
                    width: 185,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade600,width: 2)
                        )
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: Text('Synopsis', style: TextStyle(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.65),
                      fontWeight: FontWeight.w400,
                    )
                    ),
                  ),

                ],
              ),
              Container(
                // width: double.infinity,
                // height: double.infinity,
                margin: EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Row(
                    children: [
                      days(day: 'WED',date: '20 Nov',color: Color(0xff241977),opacity: 1.0,),
                      days(day: 'THU',date: '21 Nov',color: Color(0xff38344b),opacity: 0.8,),
                      days(day: 'FRI',date: '22 Nov',color: Color(0xff38344b),opacity: 0.8,),
                      days(day: 'SAT',date: '23 Nov',color: Color(0xff38344b),opacity: 0.8,),
                      days(day: 'SUN',date: '24 Nov',color: Color(0xff38344b),opacity: 0.8,),
                      days(day: 'Mon',date: '25 Nov',color: Color(0xff38344b),opacity: 0.5,),
                      days(day: 'Thu',date: '26 Nov',color: Color(0xff38344b),opacity: 0.5,),

                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20,left: 22),
                child: Text('Select Cinema',style: TextStyle(
                  fontSize: 12,
                  color: Colors.white38
                ),
                ),
              ),
              Container(
                height: 35,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey.shade600,width: 1)
                  )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cinema XXI Ambarukmo Plaza',style: TextStyle(
                      color: Colors.white,fontSize: 14
                    ),),
                    Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 5),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('REGULAR 2D',style: TextStyle(
                      fontSize: 14,
                      color: Colors.white
                    ),),
                    Text('Rp 30,000',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 5),
                child: Row(
                  children: [
                    Expanded
                      (child: seats(date: '15:5',day: '12 seats avalible',opacity: 0.8,color: Color(0xff241977),)),
                    Expanded
                      (child: seats(date: '15:5',day: '12 seats avalible',opacity: 0.8,color: Color(0xff38344b),)),
                    Expanded(child
                        : seats(date: '16:55',day: 'All seats taken',opacity: 0.5,color: Color(0xff38344b),))
                  ],
                ),
              ),
              Container(

                color:Color(0xff241977) ,
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Text(
                  'Take a seat',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white70
                  ),
                ),
              )


            ],

          ),
        )
        );
  }
}

class days extends StatelessWidget {
   days({
    Key? key, this.day, this.date, this.color,this.opacity
  }) : super(key: key);
    final day;
    final date;
    Color? color;
    final opacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        margin: EdgeInsets.only(top: 15,right: 12 ),
        padding: EdgeInsets.all(10),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color
            // color: Color(0xff241977)

      ),
        child: Column(
          children: [
            Text(date,style: TextStyle(color: Colors.white,fontSize: 8),),
            Text(day,style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
      ),
    );
  }
}
class seats extends StatelessWidget {
  seats({
    Key? key, this.day, this.date, this.color,this.opacity
  }) : super(key: key);
  final day;
  final date;
  Color? color;
  final opacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        margin: EdgeInsets.only(top: 15,right: 12 ),
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: color
          // color: Color(0xff241977)

        ),
        child: Column(
          children: [
            Text(date,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 15),),
            Text(day,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 8),),
          ],
        ),
      ),
    );
  }
}

