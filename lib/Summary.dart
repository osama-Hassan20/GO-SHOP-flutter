import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'checkouta.dart';
import 'home.dart';
import 'payments.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Summary(),
    );
  }
}


class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _MyProfileState();
}

class _MyProfileState extends State<Summary> {
  late double wid= MediaQuery.of(context).size.width;
  Color ? myColor = Colors.white;
  Color ? itColor  =  Colors.orangeAccent;
  Color ? tColor  =  Colors.black;
  Color ? aColor  =  Colors.orangeAccent;
  Color ? bColor  =  Colors.redAccent;

  late SharedPreferences adressdata;
  late SharedPreferences carddata;
  String ? street1;
  String ? street2;
  String ? country;
  String ? state;
  String ? city;
  String ? cardnum;


  void init()async{
    adressdata = await SharedPreferences.getInstance();
    carddata = await SharedPreferences.getInstance();
    setState(() {
      street1 = adressdata.getString("street1");
      street2 = adressdata.getString("street2");
      country = adressdata.getString("country");
      state = adressdata.getString("State");
      city = adressdata.getString("city");
      cardnum = carddata.getString("cardnum");
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
        child: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,

        leading:
        InkWell(
          child: Icon(Icons.arrow_back,),
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
    title:Text("check out"),
    centerTitle: true,
    actions: [

      InkWell(
        child: Icon(Icons.home,),
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          });
        },
      ),
    ],



    ),
    preferredSize: Size.fromHeight(40),
    ),

    body: ListView(
              children: [
                    Container(
    color: Colors.purple,
    height: 80,
    // margin: EdgeInsets.only(top: -1),
    padding: EdgeInsets.only(left: 30,right: 30),

                  child: Column(

    mainAxisAlignment: MainAxisAlignment.center,

             children: [
                           Stack(

                                children: [
                        Divider( color:  Colors.white, thickness: 2,),
                            Positioned(
                                child: Stack(
    alignment: Alignment.center,
    children: [
                               Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
    width: 15,
    height: 15,

    ),
    Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orangeAccent,),
    width: 12,
    height: 12,

    ),

    ],
    ),
    right: 0,
    ),
    Positioned(
    left: 0,
    child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
    width: 15,
    height: 15,

    )),
    Positioned(
    right: 130,
    child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,),
    width: 15,
    height: 15,

    ))
    ],),
    Row(
    children: [
    Text("Adress"),
    SizedBox(width: 55,),
    Text("Payments"),
    SizedBox(width: 53,),
    Text("Summary"),
    ],
    )



    ],),
    ),
                Padding(padding: EdgeInsets.all(10),
                child: Text("Summary",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),),
                Container(
                  width: wid,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        child:
                        Row(
                          children: [
                            //Image

                            Container(
                                decoration: BoxDecoration(
                                  //color: Colors.green,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                height: 150,
                                width: 120,


                                child:ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                  child: Image.network("https://cdn.pixabay.com/photo/2016/02/05/19/34/isolated-1181845__340.png",
                                    height: 150,
                                    fit: BoxFit.cover,),
                                )


                            ),

                            // name
                            SizedBox(
                              width: 10,
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                                  SizedBox(height: 10,),
                                  Text("American Trends",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                      Text("+23",style: TextStyle(fontSize: 6),)
                                    ],

                                  ),
                                ],),)
                          ],
                        )),

                  ),
                ),
                Container(
                  width: wid,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        child:
                        Row(
                          children: [
                            //Image

                            Container(
                                decoration: BoxDecoration(
                                  //color: Colors.green,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                height: 150,
                                width: 120,


                                  child:ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                    child: Image.network("https://cdn.pixabay.com/photo/2016/02/05/19/34/isolated-1181845__340.png",
                                      height: 150,
                                      fit: BoxFit.cover,),
                                  )


                            ),

                            // name
                            SizedBox(
                              width: 10,
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                                  SizedBox(height: 10,),
                                  Text("American Trends",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                      Text("+23",style: TextStyle(fontSize: 6),)
                                    ],

                                  ),
                                ],),)
                          ],
                        )),

                  ),
                ),
                Container(
                  width: wid,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        child:
                        Row(
                          children: [
                            //Image

                            Container(
                                decoration: BoxDecoration(
                                  //color: Colors.green,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                height: 150,
                                width: 120,


                                child:ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                  child: Image.network("https://cdn.pixabay.com/photo/2016/02/05/19/34/isolated-1181845__340.png",
                                    height: 150,
                                    fit: BoxFit.cover,),
                                )


                            ),

                            // name
                            SizedBox(
                              width: 10,
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Women's Fall Winter Scarf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                                  SizedBox(height: 10,),
                                  Text("American Trends",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star,color: Colors.orange,size: 13,),
                                      Icon(Icons.star_half,color: Colors.orange,size: 13,),
                                      Text("+23",style: TextStyle(fontSize: 6),)
                                    ],

                                  ),
                                ],),)
                          ],
                        )),

                  ),
                ),
                Container(
                  width: wid,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  child: Stack(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipping adress",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("$street1 $street2 $city $state $country",style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    Positioned(
                      right: 10,
                        child: InkWell(
                      child:Icon(Icons.gpp_good_rounded,color: tColor,),
                      onTap:  (){setState(() {
                        tColor = Colors.orangeAccent;

                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),);
                      });},
                    ))
                  ],),
                ),
                Padding(padding: EdgeInsets.only(left: 15),
                  child: InkWell(child:
                  Text("change",style: TextStyle(fontSize: 14,color: Colors.red),),

                    onTap:  (){setState(() {
                     // tColor = Colors.orangeAccent;

                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()),);
                    });},
                  ),

                ),
                SizedBox(height: 10,),
                Padding(padding: EdgeInsets.only(left: 15),
                  child:
                  Text("Payment",style: TextStyle(fontSize: 18,color: Colors.black),),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                 // alignment: Alignment.center,
                  width: wid,
                 // color: Colors.cyanAccent,
                  height: 90,
                  child:
                    Row(
                      children: [
                        InkWell(
                          child: Stack(
                            children: [
                              Container(
                                width: 80,
                                height: 90,
                              ),
                              //Positioned(child: Text("numers numbers")),
                              Positioned(
                                top: 10,
                                left: 10,
                                // bottom: 30,
                                child:  Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: bColor,),
                                  alignment: Alignment.centerRight,

                                  width: 30,
                                  height: 30,


                                ),),
                              Positioned(
                                top: 10,
                                left: 26,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: aColor,),
                                  width: 30,
                                  height: 30,


                                ),)
                            ],

                          ),
                            onTap: (){setState(() {
                              aColor = Colors.redAccent;
                              bColor = Colors.orangeAccent;

                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),);
                            });}
                        ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.4,
                         height: 80,
                         child:  Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Master card",style: TextStyle(fontSize: 10,),),
                             SizedBox(height: 10,),
                             Text("$cardnum",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                           ],

                         ),
                       ),
                        Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 90,
                          ),
                          Positioned(
                              right: 15,
                              top: 10,
                              child: InkWell(
                            child:Icon(Icons.gpp_good_rounded,color: tColor,),
                            onTap:  (){setState(() {
                              tColor = Colors.orangeAccent;

                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),);
                            });},
                          ))
                        ],),





                      ],
                    )
                ),
                Padding(padding: EdgeInsets.only(left: 15),
                  child: InkWell(child:
                  Text("change",style: TextStyle(fontSize: 14,color: Colors.red),),
                    onTap:  (){setState(() {
                     // tColor = Colors.orangeAccent;

                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Payments()),);
                    });},

                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      height: 45,
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: myColor,),

                      alignment: Alignment.center,
                      child:InkWell(
                          child:
                          Text("Back",style: TextStyle(color: itColor,),),
                          //color: mycolor,

                          onTap: (){
                            setState(() {
                              myColor = Colors.orangeAccent;
                              itColor = Colors.white;
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Payments()),);
                            });
                          }
                      ),

                    ),
                    SizedBox(width: 50,),
                    Container(
                      width: 90,
                      height: 45,
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: myColor,),

                      alignment: Alignment.center,
                      child:InkWell(
                          child:
                          Text("Next",style: TextStyle(color: itColor,),),
                          //color: mycolor,

                          onTap: (){
                            setState(() {
                              myColor = Colors.orangeAccent;
                              itColor = Colors.white;
                              //  print("next");
                              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Payments()),);
                            });
                          }
                      ),

                    ),
                  ],
                )





         ]

    )

    );}}